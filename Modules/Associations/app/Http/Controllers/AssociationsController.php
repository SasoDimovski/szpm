<?php

namespace Modules\Associations\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Modules\Associations\Dto\AssociationsDto;
use Modules\Associations\Http\Requests\AssociationsStoreRequest;
use Modules\Associations\Http\Requests\AssociationsUpdateRequest;
use Modules\Associations\Services\AssociationsServices;

class AssociationsController extends Controller
{
    public function __construct(public AssociationsServices $associationsServices, private readonly AssociationsDto $associationsDto)
    {
    }

    public function index(Request $request): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->associationsServices->index($request->all());
        return view('Associations::associations/index', $return['data']);
    }

    public function create(): \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Foundation\Application
    {
        $return = $this->associationsServices->create();
        return view('Associations::associations/edit');
    }

    public function store(AssociationsStoreRequest $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return') ;
        $query= $request->get('query') ;


        $associationsDto = $this->associationsDto->fromRequest($request);
        $return = $this->associationsServices->store($associationsDto);

        $message_error= $return->data['message_error'] ?? $request->get('message_error') ;
        $message_success=$return->data['message_success'] ?? $request->get('message_success') ;

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return.'/'.$return->data['id']).'?'.$query)->with('success', $message_success);
    }

    public function show($lang, $id_module, $id): \Illuminate\Foundation\Application|\Illuminate\Contracts\View\View|\Illuminate\Contracts\View\Factory|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $return = $this->associationsServices->show( $id);
        return view('Associations::associations/show', $return['data']);
    }

    public function edit($lang, $id_module, $id): \Illuminate\Foundation\Application|\Illuminate\Contracts\View\View|\Illuminate\Contracts\View\Factory|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $return = $this->associationsServices->edit($id);
        return view('Associations::associations/edit', $return['data']);
    }

    public function update($lang, $id_module, $id, AssociationsUpdateRequest $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        $url_return= $request->get('url_return') ;
        $query= $request->get('query') ;


        $associationsDto = $this->associationsDto->fromRequest($request);
        $return = $this->associationsServices->update($associationsDto);

        $message_error= $return->data['message_error'] ?? $request->get('message_error') ;
        $message_success=$return->data['message_success'] ?? $request->get('message_success') ;

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }

    public function destroy($lang, $id_module, $id, Request $request): \Illuminate\Foundation\Application|\Illuminate\Routing\Redirector|\Illuminate\Http\RedirectResponse
    {
        //dd($id);
        $url_return= $request->get('url_return_war') ;
        $query= $request->get('query_war') ;
        $message_error= $request->get('error_war') ;
        $message_success= $request->get('success_war') ;

        $return = $this->associationsServices->deleteAssociations($id);

        if($return->status=='error'){
            return redirect(url($url_return).'?'.$query)->with('error', [$message_error, $return->method, $return->class]);
        }
        return redirect(url($url_return).'?'.$query)->with('success', $message_success);
    }

}
