<?php

return [
    'default_root' => public_path('uploads/asp'),
    // Per-filename -> id_module/title/slug
    'page_map' => [
        'dokumenti.asp'    => ['id_module' => 11, 'title' => 'Документи',    'slug' => 'dokumenti'],
        'index.asp'        => ['id_module' =>  9, 'title' => 'За нас',       'slug' => 'za-nas'],
        'kontakt.asp'      => ['id_module' => 25, 'title' => 'Контакт',      'slug' => 'kontakt'],
        'organizacija.asp' => ['id_module' => 10, 'title' => 'Организација', 'slug' => 'organizacija'],
        'programa.asp'     => ['id_module' => 15, 'title' => 'Програма',     'slug' => 'programa'],
    ],

    // folder -> id_association
    'assoc_map' => [
        'zletovo' => 21, 'voeni_penzioneri' => 10, 'vnatresni' => 40, 'vinica' => 9,
        'vevcani' => 7, 'veles' => 8, 'valandovo' => 6, 'tetovo' => 52, 'taftalidze' => 51,
        'szpm' => 57, 'sveti_nikole' => 47, 'suto_orizari' => 56, 'strumica' => 50,
        'struga' => 49, 'stip_karbinci' => 55, 'saraj' => 46, 'radovis_konce' => 44,
        'probistip' => 43, 'prilep' => 42, 'pehcevo' => 41, 'ohrid_debrca' => 39,
        'novo_selo' => 37, 'negotino' => 36, 'makedonski_brod' => 35, 'mak_kamenica' => 34,
        'labunista' => 32, 'kumanovo' => 31, 'krusevo' => 30, 'kriva_palanka' => 29,
        'kratovo' => 28, 'kisela_voda' => 25, 'kicevo' => 26, 'karpos' => 24, 'ilinden' => 22,
        'gjorce_petrov' => 13, 'gevgelija' => 12, 'gazi_baba' => 11, 'dojran' => 20,
        'demir_hisar' => 19, 'delcevo' => 17, 'debar_centar_zupa' => 16, 'cair' => 54,
        'butel' => 5, 'bogdanci' => 4, 'bitola' => 3, 'aerodrom' => 48,
    ],

    // Fixed fields
    'fixed' => [
        'id_user_logged' => 1,
        'id_user'        => 1,
        'picture'        => '',
        'main'           => 0,
        'cover'          => 0,
        'active'         => 1,
        'deleted'        => 0,
        'created_at'     => '2025-01-01 00:00:00',
        'updated_at'     => '2025-01-01 00:00:00',
    ],

    // Dreamweaver editable block regex
    'block_regex' => '/<!--\s*InstanceBeginEditable\s+name="sodrzina"\s*-->(.*?)<!--\s*InstanceEndEditable\s*-->/is',
];
