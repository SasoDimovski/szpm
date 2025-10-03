<?php

namespace Modules\Documents\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Documents\Dto\DocumentsDto;
use Modules\Documents\Services\DocumentsServices;

class DocumentsController extends Controller
{
    public function __construct(public DocumentsServices $documentsServices, private readonly DocumentsDto $documentsDto)
    {
    }
    public function index($lang, $id_module,Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        //dd($id_module);
        $return = $this->documentsServices->index($id_module,$request->all());
        return view('Documents::documents/index', $return['data']);

    }

    public function store($lang, $id_module, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return_doc') ;
        $query= $request->get('query_doc') ;
        $message_error= $request->get('error_doc') ;
        $message_success= $request->get('success_doc') ;

        $data=$request->all();
        $return = $this->documentsServices->store($data);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }

    public function show($lang, $id_module, $id_doc): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {

        $return = $this->documentsServices->show($id_doc);
        //dd($return);
        return view('Documents::documents/show', $return['data']);
    }

    public function delete($lang, $id_module, $id_doc, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return_war') ;
        $query= $request->get('query_war') ;
        $message_error= $request->get('error_war') ;
        $message_success= $request->get('success_war') ;

        $return = $this->documentsServices->delete($id_doc);

        if($return->status=='error'){
            return redirect(url($url_return))->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return))->with('success', $message_success);
    }
    public function update($lang, $id_module, $id_doc, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return_doc') ;
        $query= $request->get('query_doc') ;
        $message_error= $request->get('error_doc') ;
        $message_success= $request->get('success_doc') ;

        $data=$request->all();
        $return = $this->documentsServices->update( $id_doc,  $data);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }

}
