<?php

namespace App\Services;

use DirectoryIterator;
use Illuminate\Contracts\Filesystem\FileNotFoundException;

class AspImportService
{
    /** Генерира .sql содржина од root патка. */
    public function generateSql(string $root): array
    {
        if (!is_dir($root)) {
            throw new FileNotFoundException("Root folder not found: {$root}");
        }

        $PAGE_MAP  = config('asp_import.page_map');
        $ASSOC_MAP = config('asp_import.assoc_map');
        $FIXED     = config('asp_import.fixed');
        $BLOCK_RE  = config('asp_import.block_regex');

        $dirIt = new DirectoryIterator($root);
        $total = 0; $skipped = 0;
        $sql   = '';

        foreach ($dirIt as $dir) {
            if (!$dir->isDir() || $dir->isDot()) continue;

            $folder = $dir->getFilename();
            if (!isset($ASSOC_MAP[$folder])) { $skipped++; continue; }
            $idAssociation = $ASSOC_MAP[$folder];

            foreach ($PAGE_MAP as $filename => $meta) {
                $path = $dir->getPathname() . DIRECTORY_SEPARATOR . $filename;
                if (!is_file($path)) continue;

                $raw = @file_get_contents($path);
                if ($raw === false) continue;

                $raw = $this->detectToUtf8($raw);
                if (!preg_match($BLOCK_RE, $raw, $m)) continue;

                $content = trim($m[1]);

                $vals = [
                    'id_user_logged' => $FIXED['id_user_logged'],
                    'id_user'        => $FIXED['id_user'],
                    'id_module'      => $meta['id_module'],
                    'id_association' => $idAssociation,
                    'title'          => $this->sqlEscape($meta['title']),
                    'slug'           => $this->sqlEscape($meta['slug']),
                    'text'           => $this->sqlEscape($content),
                    'picture'        => $this->sqlEscape($FIXED['picture']),
                    'main'           => $FIXED['main'],
                    'cover'          => $FIXED['cover'],
                    'active'         => $FIXED['active'],
                    'deleted'        => $FIXED['deleted'],
                    'created_at'     => $FIXED['created_at'],
                    'updated_at'     => $FIXED['updated_at'],
                ];

                $sql .= $this->buildInsert($vals);
                $total++;
            }
        }

        return [
            'sql'     => $sql,
            'total'   => $total,
            'skipped' => $skipped,
        ];
    }

    /** === Helpers (истите од твојата скрипта, адаптирани) === */
    private function detectToUtf8(string $raw): string
    {
        if (preg_match('/<meta[^>]+charset=([a-zA-Z0-9\-\_]+)[^>]*>/i', $raw, $m)) {
            $cs = trim($m[1]);
            $conv = @iconv($cs, 'UTF-8//TRANSLIT', $raw);
            if ($conv !== false) return $conv;
        }
        foreach (['Windows-1251','Windows-1250','Windows-1252','ISO-8859-1','UTF-8'] as $cs) {
            $conv = @iconv($cs, 'UTF-8//TRANSLIT', $raw);
            if ($conv !== false && mb_check_encoding($conv, 'UTF-8')) return $conv;
        }
        return $raw;
    }

    private function sqlEscape(string $s): string
    {
        return addslashes($s);
    }

    private function buildInsert(array $v): string
    {
        return
            "INSERT INTO `records` (`id_user_logged`,`id_user`,`id_module`,`id_association`,`title`,`slug`,`subtitle`,`intro`,`text`,`picture`,`main`,`cover`,`active`,`deleted`,`created_at`,`updated_at`) VALUES
({$v['id_user_logged']}, {$v['id_user']}, {$v['id_module']}, {$v['id_association']}, '{$v['title']}', '{$v['slug']}', NULL, NULL, '{$v['text']}', '{$v['picture']}', {$v['main']}, {$v['cover']}, {$v['active']}, {$v['deleted']}, '{$v['created_at']}', '{$v['updated_at']}');\n\n";
    }
}

