<?php

namespace Modules\Records\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Records\Http\Requests\RecordStoreRequest;
use Modules\Records\Http\Requests\RecordUpdateRequest;
use Modules\Records\Dto\RecordsDto;
use Modules\Records\Services\RecordsServices;

class RecordsController extends Controller
{

    public function __construct(public RecordsServices $recordsServices, private readonly RecordsDto $recordsDto)
    {
    }
    public function index($lang, $id_module, Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->recordsServices->index($id_module,$request->all());
        return view('Records::records/index', $return['data']);
    }

    public function edit($lang, $id_module, $id): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {

        $return = $this->recordsServices->edit($lang, $id);
        return view('Records::records/edit', $return['data']);

//        $record = $this->recordsServices->getRecordById($id);
//        //dd($record->id_module);
//        $documents = $this->recordsServices->getDocumentByIdRecordIdModule($id, $record->id_module);
//        return view('Records::records/edit', compact('record','documents'));
    }
    public function create($lang, $id_module): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->recordsServices->create();
        //dd($record->id_module);

        return view('Records::records/edit', $return['data']);
    }
    public function update($lang, $id_module, $id, RecordUpdateRequest $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {

        $url_return= $request->get('url_return') ;
        $query= $request->get('query') ;
        $message_error= $request->get('message_error') ;
        $message_success= $request->get('message_success') ;

       // dd($url_return);

        $recordsDto = $this->recordsDto->fromRequest($request);
        $return = $this->recordsServices->update($id, $request->get('file_name_hidden'), $recordsDto);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }
    public function store($lang, $id_module, RecordStoreRequest $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {

        $url_return= $request->get('url_return') ;
        $query= $request->get('query') ;
        $message_error= $request->get('message_error') ;
        $message_success= $request->get('message_success') ;

        // dd($url_return);

        $recordsDto = $this->recordsDto->fromRequest($request);
        $return = $this->recordsServices->store( $recordsDto);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        //return redirect(url($url_return).'?'.$query)->with('success', $message_success);
        return redirect(url($url_return.'/'.$return->data['id']).'?'.$query)->with('success', $message_success);
    }
    public function show($lang, $id_module, $id): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $record = $this->recordsServices->getRecordById($id);
        //dd($record->id_module);
        $documents = $this->recordsServices->getDocumentByIdRecordIdModule($id, $record->id_module);
        return view('Records::records/show', compact('record','documents'));
    }

    public function delete($lang, $id_module, $id, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {

        $url_return= $request->get('url_return_war') ;
        //dd($url_return);
        $query= $request->get('query_war') ;
        $message_error= $request->get('error_war') ;
        $message_success= $request->get('success_war') ;

        $return = $this->recordsServices->delete($id);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }

    public function storeDoc($lang, $id_module, $id_record, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return_doc') ;
        $query= $request->get('query_doc') ;
        $message_error= $request->get('error_doc') ;
        $message_success= $request->get('success_doc') ;

        $data=$request->all();
        $return = $this->recordsServices->storeDoc($id_record , $data);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }
    public function updateDoc($lang, $id_module, $id_record, $id_doc, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return_doc') ;
        $query= $request->get('query_doc') ;
        $message_error= $request->get('error_doc') ;
        $message_success= $request->get('success_doc') ;

        $data=$request->all();
        $return = $this->recordsServices->updateDoc( $id_record , $id_doc,  $data);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }

    public function deleteDoc($lang, $id_module, $id, $id_doc, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return_war') ;
        $query= $request->get('query_war') ;
        $message_error= $request->get('error_war') ;
        $message_success= $request->get('success_war') ;
//dd($url_return);
        $return = $this->recordsServices->deleteDocument($id, $id_doc);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }

    public function showDoc($lang, $id_module, $id, $id_doc): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {

        $return = $this->recordsServices->showDoc($id_doc);
        //dd($return);
        return view('Records::records/show-doc', $return['data']);
    }


    public function browser(): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        return view('/admin/_browser');
    }
}
