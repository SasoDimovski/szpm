@php
    //$id_module = $module->id ?? '';
    $id_module = request()->segment(3);
    $lang = request()->segment(2);
    $query = request()->getQueryString();

    $id = $record->id ?? '';
    $id_user_logged = Auth::id();
    $id_user = $record->id_user ?? '';
    $id_module_ = $record->id_module ?? '';
    $association = $record->association->name ?? old('title');
    $title = $record->title ?? old('title');
    $slug = $record->slug ?? old('slug');
    $subtitle = $record->subtitle ?? old('subtitle');
    $intro = $record->intro ?? old('intro');
    $text = $record->text ?? old('text');
    $picture = $record->picture ?? old('picture_file');
    $created_at = (isset($record->created_at)) ? date("d.m.Y  H:i:s", strtotime($record->created_at)) : '';
    $updated_at = (isset($record->updated_at)) ? date("d.m.Y  H:i:s", strtotime($record->updated_at)) : '';
    $active = $record->active ?? '';
    $main= $record->main ?? '';
    $cover = $record->cover ?? '';



    $path_upload = 'uploads/records/';

    $message_error= (isset($id)) ? __('global.update_error'): __('global.save_error');
    $message_success= (isset($id)) ? __('global.update_success'): __('global.save_success');

@endphp

<div class="col-12">
    <div class="row invoice-info">
        <div class="col-sm-12 invoice-col" >
            <div class="timeline">
                <!-- timeline time label -->

                <!--   ================================================================================-->
                <div class="time-label">
                    @if($active==0)
                        <span class="bg-gradient-red">{{ __('global.deactivated') }}</span>
                    @else
                        <span class="bg-gradient-success">{{ __('global.active') }}</span>
                    @endif
                    @if($main==1)
                        <span class="bg-info" >{{ trans('records.main') }}</span>
                    @endif
                    @if($cover==1)
                        <span class="bg-yellow" >{{ trans('records.cover') }}</span>
                    @endif

                    <br>
                        <span class="bg-gradient-gray" style="margin-top: 3px">  <i class="fas fa-circle text-warning"></i> <strong>{{__('records.id')}}</strong>: {{ $id }}</span>
                        <span class="bg-gradient-gray" style="margin-top: 3px"><i class="fas fa-clock text-warning"></i> <strong>{{__('records.created_at')}}</strong>: {{ $created_at}}</span>
                        <span class="bg-gradient-gray" style="margin-top: 3px"> <i class="fas fa-clock text-warning "></i></i> <strong> {{__('records.updated_at')}}</strong>: {{ $updated_at }}</span>
                </div>
                <!--   ================================================================================-->
                <div>
                    <i class="fas fa-id-card bg-gradient-success"></i>

                    <div class="timeline-item">


                        <div class="timeline-header">
                            <strong>{{__('records.id_association')}}</strong>:<br> {{ (!empty($association))? $association : '' }}
                            <hr>
                            <strong>{{__('records.title')}}</strong>:<br> {{ (!empty($title))? $title : '' }}
                            <hr>
                            <strong>{{trans('records.slug')}}</strong>:<br> {{ (!empty($slug))? $slug : '' }}
                            <hr>
                            <strong>{{trans('records.subtitle')}}</strong>:<br> {{ (!empty($subtitle))? $subtitle : '' }}
                        </div>

                    </div>
                </div>
                <!--   ================================================================================-->
                <div>
                    <i class="fas fa-comments bg-info"></i>
                    <div class="timeline-item">
                        {{--                        <span class="time"><i class="fas fa-clock"></i> 27 mins ago</span>--}}
                        <div class="timeline-header"> <strong>{{__('records.intro')}}</strong><br></div>
                        <div class="timeline-header">

                            {!! $intro!!}
                            {{--   {{ (!empty($records->text))?    htmlspecialchars($records->text, ENT_COMPAT, 'UTF-8'): '--' }}--}}
                        </div>
                    </div>
                </div>
                <!--   ================================================================================-->
                <div>
                    <i class="fas fa-comments bg-yellow"></i>
                    <div class="timeline-item">
                        {{--                        <span class="time"><i class="fas fa-clock"></i> 27 mins ago</span>--}}
                        <div class="timeline-header"> <strong>{{__('records.text')}}</strong><br></div>
                        <div class="timeline-header">

                            {!! $text !!}
                            {{--   {{ (!empty($records->text))?    htmlspecialchars($records->text, ENT_COMPAT, 'UTF-8'): '--' }}--}}
                        </div>
                    </div>
                </div>
                <!--   ================================================================================-->
                <!--   ================================================================================-->
                <!--   ================================================================================-->
                @if(!empty($picture))
                    @php
                        $css = empty($picture) ? 'display: none' : '';
                        $src = !empty($picture) ? $path_upload . $id . '/' . $picture : '';
                        $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') || $_SERVER['SERVER_PORT'] == 443 ? "https://" : "http://";
                        $domain = $protocol . $_SERVER['HTTP_HOST'];
                    @endphp
                    <div class="time-label">
                        <img id="upload_image" class="img-circle img-bordered-sm modal_image"
                             data-target="#ModalImage"
                             width="70px" height="70px" alt="image" data-toggle="modal"
                             src="{{asset($src)}}"
                             data-url="{{$domain}}/{{$path_upload}}{{$id}}/{{ $picture}}"
                             data-title="{{$picture}}"
                             title="{{ $picture}}"
                             style="cursor: pointer">
                        <strong>{{$picture}}</strong>

                    </div>

                @endif
                <!--   ================================================================================-->
                <!--   ================================================================================-->
            </div>
        </div>
    </div>
</div>

<div class="col-12">

            <div class="card-header">
                <h3 class="card-title">{{__('records.edit.document.title')}}
                </h3>
            </div>
@if(count($documents) > 0)

    <div class="card-body p-0 scrollmenu">
        <table class="table">
            <thead>
            <tr>
                <th>{{__('records.edit.document.id')}}</th>
                <th>{{__('records.edit.document.name')}}</th>
                <th>{{__('records.edit.document.file')}}</th>
                <th><i class="fas fa-lock"
                       title="{{__('records.edit.document.active_status')}}"></i></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            @foreach($documents as $document)
                @php
                    $document_id = $document->id ?? '';
                    $document_name = $document->name ?? '';
                    $document_file = $document->file ?? '';
                    $document_active = $document->active ?? '';
                    $document_comment = $document->comment ?? '';
                    $extension = strtolower(pathinfo($document_file, PATHINFO_EXTENSION));
                    $styleMap = [
                        'pdf' => 'fa-file-pdf',
                        'doc' => 'fa-file-word',
                        'docx' => 'fa-file-word',
                        'xls' => 'fa-file-excel',
                        'xlsx' => 'fa-file-excel',
                    ];
                    $style = $styleMap[$extension] ?? 'fa-file';
                @endphp
                <tr>
                    <td>{{ $document_id}}</td>
                    <td title="{{ $document_name}}">
                        {{
                             strlen($document_name) > 40
                                 ? (strpos($document_name, ' ', 40) !== false
                                     ? substr($document_name, 0, strpos($document_name, ' ', 40)) . '...'
                                     : substr($document_name, 0, 40) . '...')
                                 : $document_name
                         }}
                    </td>
                    <td>
                        <a href="{{ asset($path_upload. $id.'/'. $document_file) }}"
                           class="btn-link text-secondary"
                           target="{{ $extension === 'pdf' ? '_blank' : '_self' }}">
                            <i class="far fa-fw {{ $style }}"></i> {{ $document->file }}
                        </a>
                    </td>
                    <td>
                        @if($document_active == 1)
                            <i class="fas fa-check-square"
                               title="{{__('records.edit.document.active')}}"></i>
                        @endif
                    </td>
                    <td class="text-right py-0 align-middle">

                    </td>

            @endforeach
            </tbody>
        </table>

    </div>
@else
    <div class="card-body">
        @if(!empty($id))
            {{__('records.edit.documents.no_documents')}}
        @else
            {{__('records.edit.documents.no_documents_no_records')}}
        @endif
    </div>
@endif
</div>

