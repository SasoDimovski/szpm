<?php

namespace App\Http\Controllers;

use App\Services\PublicServices;
use Illuminate\Http\Request;


use Modules\Associations\Services\AssociationsServices;

class PublicController extends Controller
{
    public function __construct(public PublicServices $publicServices)
    {
    }

    public function indexAssociations(Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->publicServices->indexAssociations($request->all());
        return view('public/associations', $return['data']);
    }
    public function indexAssociation($id_module,$id_association,$slug,Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->publicServices->indexAssociation($id_module,$id_association,$request->all());
        return view('public/association', $return['data']);
    }
    public function indexStatic($id_module,$id_association,$slug,Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->publicServices->indexStatic($id_module,$id_association,$request->all());
        return view('public/static', $return['data']);
    }
    public function indexRecord($id_module,$id_association,$id,$slug,Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->publicServices->indexRecord($id_module,$id_association,$id,$request->all());
        return view('public/record', $return['data']);
    }
    public function indexSearch(Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->publicServices->indexSearch($request->all());
        return view('public/search', $return['data']);
    }
    public function indexRecords($id_module,$id_association,$slug,Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->publicServices->indexRecords($id_module,$id_association,$request->all());
        return view('public/records', $return['data']);
    }
    public function index(Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->publicServices->index($request->all());
        return view('public/index', $return['data']);
    }
}
