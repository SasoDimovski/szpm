@extends('admin/master')
@section('content')

    @php
        //$id_module = $module->id ?? '';
        $id_module = request()->segment(3);
        $lang = request()->segment(2);
        $query = request()->getQueryString();

        $id = $record->id ?? '';
        $id_user_logged = Auth::id();
        $id_user = $record->id_user ?? '';
        $id_module_ = $record->id_module ?? '';
        $id_association = $record->id_association ?? old('id_association');
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

        $url = url('admin/' . $lang . '/' . $module->link);

        $url_base= 'admin/'.$lang.'/'.$id_module.'/records/';

        $url_store= url($url_base. 'store/');
        $url_update = url($url_base . 'update/' . $id);
        $url_action = filled($id) ? $url_update : $url_store;

        $url_return = url($url_base . 'edit/' . $id);

        $url_store_doc = url($url_base. 'store_doc/'.$id);
        $url_update_doc = url($url_base . 'update_doc/'.$id);
        $url_delete_doc = url($url_base. 'delete_doc/'.$id);
        $url_show_doc = url($url_base . 'show_doc/'.$id);


        $path_upload = 'uploads/records/';

        $message_error= (isset($id)) ? __('global.update_error'): __('global.save_error');
        $message_success= (isset($id)) ? __('global.update_success'): __('global.save_success');


    @endphp

    {{--    <div>--}}
    {{--        <h1>Record Details</h1>--}}
    {{--        <p><strong>$id_user_logged:</strong> {{ $id_user_logged }}</p>--}}
    {{--        <p><strong>Title:</strong> {{ $title }}</p>--}}
    {{--        <p><strong>Slug:</strong> {{ $slug }}</p>--}}
    {{--        <p><strong>Subtitle:</strong> {{ $subtitle }}</p>--}}
    {{--        <p><strong>Intro:</strong> {{ $intro }}</p>--}}
    {{--        <p><strong>Text:</strong> {{ $text }}</p>--}}
    {{--        <p><strong>Picture:</strong> {{ $picture }}</p>--}}
    {{--        <p><strong>Created At:</strong> {{ $created_at }}</p>--}}
    {{--        <p><strong>Updated At:</strong> {{ $updated_at }}</p>--}}
    {{--        <p><strong>Active:</strong> {{ $active }}</p>--}}
    {{--    </div>--}}
    {{--    @php--}}
    {{--    dd();--}}
    {{--    @endphp--}}

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                @include('admin._flash-message')
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1><i class="fa {{$module->design->icon}}"></i> {{$module->title }} </h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a
                                    href="{{$url}}">{{$module->title }}</a>
                            </li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>


        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                @include('flash::message')

                <form class="needs-validation" role="form" id="form_edit" name="form_edit"
                      action="{{ "{$url_action}" }}" method="POST"
                      enctype="multipart/form-data">
                    <input type="hidden" id="url_return" name="url_return" value="{{ $url_return }}">
                    <input type="hidden" id="query" name="query" value="{{$query}}">
                    <input type="hidden" id="message_error" name="message_error" value="{{ $message_error }}">
                    <input type="hidden" id="message_success" name="message_success" value="{{ $message_success }}">

                    <input type="hidden" id="id_user_logged" name="id_user_logged" value="{{ $id_user_logged}}">
                    <input type="hidden" id="id_user" name="id_user" value="{{ $id_user}}">
                    <input type="hidden" id="id_module" name="id_module" value="{{ $id_module}}">

                    {{csrf_field()}}
                    @method('PUT')

                    <div class="row">
                        <div class="col-md-6">
                            <!-- Errors ---------->
                            @if (count($errors) > 0)
                                <div id="toast-container" class="toast-top-full-width" onclick="closeErrorWindow(this)">
                                    <div class="toast toast-error" aria-live="assertive" style="">
                                        <div class="toast-progress" style="width:100%;"></div>
                                        <button type="button" class="close" data-dismiss="toast-top-full-width"
                                                role="button" onclick="closeErrorWindow(this)">×
                                        </button>
                                        <div class="toast-message">
                                            <p><strong>{!!__('global.error_not')!!}</strong>
                                            </p>
                                            @foreach ($errors->all() as $error)
                                                <div class="callout callout-danger"
                                                     style="color: #0a0a0a!important;padding: 10px!important;">
                                                    {!! $error !!}
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            @endif


                            <div class="card card">

                                <div class="card-header">
                                    @if($active==0)
                                        &nbsp;<i class="fas fa-lock text-danger"
                                                 title="{{__('global.deactivated')}}"></i>
                                    @endif
                                    <h3 class="card-title">  @if(isset($id))
                                            id: {{$id}}
                                        @endif</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    {{--=========================================================--}}
                                    <div class="row">

                                        <div class="col-sm-3">
                                            <?php
                                            $input_value = $active;
                                            $input_name = 'active';
                                            $input_desc = __('records.active');
                                            $input_readonly = '';
                                            $input_css = 'text';
                                            ?>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox"
                                                           id="{{$input_name}}"
                                                           name="{{$input_name}}"
                                                           value="1" @if($input_value==1||$input_value=='')
                                                        {{'checked'}}
                                                        @endif {{$input_readonly}}>
                                                    <label for="{{$input_name}}"
                                                           class="custom-control-label {{$input_css}}"
                                                           id="{{$input_name}}">{{$input_desc}}</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-3">
                                            <?php
                                            $input_value = $main;
                                            $input_name = 'main';
                                            $input_desc = __('records.main');
                                            $input_readonly = '';
                                            $input_css = 'text';
                                            ?>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox"
                                                           id="{{$input_name}}"
                                                           name="{{$input_name}}"
                                                           value="1" @if($input_value==1)
                                                        {{'checked'}}
                                                        @endif {{$input_readonly}}>
                                                    <label for="{{$input_name}}"
                                                           class="custom-control-label {{$input_css}}"
                                                           id="{{$input_name}}">{{$input_desc}}</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-3">
                                            <?php
                                            $input_value = $cover;
                                            $input_name = 'cover';
                                            $input_desc = __('records.cover');
                                            $input_readonly = '';
                                            $input_css = 'text';
                                            ?>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox"
                                                           id="{{$input_name}}"
                                                           name="{{$input_name}}"
                                                           value="1" @if($input_value==1)
                                                        {{'checked'}}
                                                        @endif {{$input_readonly}}>
                                                    <label for="{{$input_name}}"
                                                           class="custom-control-label {{$input_css}}"
                                                           id="{{$input_name}}">{{$input_desc}}</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    {{--=========================================================--}}
                                    <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label
                                                for="id_association" class='text-red'>{{__('records.id_association')}} *</label>
                                            <select class="select2bs4" style="width:100%;" id="id_association"
                                                    name="id_association">
                                                @if(count($associations) > 0)
                                                    <option value="">&nbsp;</option>
                                                    @foreach($associations as $association)
                                                        <option
                                                            value="{{$association->id}}" {{ ($id_association==$association->id)? 'selected' : '' }}>{{$association->name}}</option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    </div>
                                    {{--=========================================================--}}
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <?php
                                            $input_value = $title;
                                            $input_name = 'title';
                                            $input_desc = __('records.title');
                                            $input_maxlength = 255;
                                            $input_readonly = '';
                                            $input_css = 'text-red';
                                            ?>
                                            <div class="form-group">
                                                <label for="{{$input_name}}"
                                                       class="{{$input_css}}">{{$input_desc}} *</label>
                                                <input type="text" class="form-control" id="{{$input_name}}"
                                                       name="{{$input_name}}"
                                                       placeholder="{{$input_desc}}"
                                                       value="{{$input_value}}"
                                                       maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                                            </div>
                                        </div>
                                    </div>
                                    {{--=========================================================--}}
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <?php
                                            $input_value = $slug;
                                            $input_name = 'slug';
                                            $input_desc = __('records.slug');
                                            $input_maxlength = 255;
                                            $input_readonly = 'readonly';
                                            $input_css = 'text';
                                            ?>
                                            <div class="form-group">
                                                <label for="{{$input_name}}"
                                                       class="{{$input_css}}">{{$input_desc}}</label>
                                                <input type="text" class="form-control" id="{{$input_name}}"
                                                       name="{{$input_name}}"
                                                       placeholder="{{$input_desc}}"
                                                       value="{{$input_value}}"
                                                       maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                                            </div>
                                        </div>
                                    </div>
                                    {{--=========================================================--}}
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <?php
                                            $input_value = $subtitle;
                                            $input_name = 'subtitle';
                                            $input_desc = __('records.subtitle');
                                            $input_maxlength = 255;
                                            $input_readonly = '';
                                            $input_css = 'text';
                                            ?>
                                            <div class="form-group">
                                                <label for="{{$input_name}}"
                                                       class="{{$input_css}}">{{$input_desc}}</label>
                                                <input type="text" class="form-control" id="{{$input_name}}"
                                                       name="{{$input_name}}"
                                                       placeholder="{{$input_desc}}"
                                                       value="{{$input_value}}"
                                                       maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                                            </div>
                                        </div>
                                    </div>
                                    {{--=========================================================--}}
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <?php
                                            $input_value = $intro;
                                            $input_name = 'intro';
                                            $input_desc = __('records.intro');
                                            $input_maxlength = 550;
                                            $input_raws = 6;
                                            $input_readonly = '';
                                            $input_css = 'text';
                                            ?>
                                            <div class="form-group"><i class="fas fa-comment text-info"></i>
                                                <label class="{{$input_css}}">{{$input_desc}}</label>
                                                <textarea class="form-control" id="{{$input_name}}"
                                                          name="{{$input_name}}" rows="{{$input_raws}}"
                                                          placeholder="{{$input_desc}}"
                                                          maxlength="{{$input_maxlength}}"  {{$input_readonly}}>{{$input_value}}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    {{--=========================================================--}}
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <?php
                                            $input_value = $text;
                                            $input_name = 'text';
                                            $input_desc = __('records.text');
                                            $input_maxlength = 1;
                                            $input_raws = 1;
                                            $input_readonly = '';
                                            $input_css = 'text';
                                            ?>
                                            <div class="form-group"><i class="fas fa-comment text-warning "></i>
                                                <label for="{{$input_name}}" class="{{$input_css}}">{{$input_desc}}</label>
                                                <textarea class="form-control" id="{{$input_name}}"
                                                          name="{{$input_name}}" rows="{{$input_raws}}"
                                                          placeholder="{{$input_desc}}"
                                                          maxlength="{{$input_maxlength}}" {{$input_readonly}}>{{$input_value}}</textarea>
{{--                                                <textarea class="textarea" id="text" name="text"--}}
{{--                                                          style="width: 100%; height: 400px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">{{$text}}</textarea>--}}
                                            </div>
                                        </div>
                                    </div>
                                    {{--=========================================================--}}
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <?php
                                            $input_value = $created_at;
                                            $input_name = 'created_at';
                                            $input_desc = __('records.created_at');
                                            $input_maxlength = 100;
                                            $input_readonly= 'readonly';
                                            $input_css= 'text';
                                            ?>
                                            <div class="form-group"><i class="fas fa-clock text-warning"></i>
                                                <label for="{{$input_name}}" class="{{$input_css}}">{{$input_desc}}</label>
                                                <input type="text" class="form-control" id="{{$input_name}}"
                                                       name="{{$input_name}}" value="{{$input_value}}"
                                                       maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <?php
                                            $input_value = $updated_at;
                                            $input_name = 'updated_at';
                                            $input_desc = __('records.updated_at');
                                            $input_maxlength = 100;
                                            $input_readonly= 'readonly';
                                            $input_css= 'text';
                                            ?>
                                            <div class="form-group"><i class="fas fa-clock text-warning "></i>
                                                <label for="{{$input_name}}" class="{{$input_css}}">{{$input_desc}}</label>
                                                <input type="text" class="form-control" id="{{$input_name}}"
                                                       name="{{$input_name}}" value="{{$input_value}}"
                                                       maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                                            </div>
                                        </div>
                                    </div>
                                    {{--=========================================================--}}

                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="button" onclick="form_edit.submit();"
                                            class="btn btn-success float-right">{{__('global.save')}}</button>
                                </div>


                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col-md-6 -->


                        <div class="col-md-6">
                            <div class="row">

                                <!--   Image ================================================================================-->
                                <div class="col-md-12">
                                    <div class="card card">
                                        <div class="card-header">
                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse"
                                                        data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
                                        </div>

                                        <div class="card-body">

                                            <div class="form-group">
                                                <label>{!! __('records.edit.image.attach')!!}</label>
                                                <div class="input-group">
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="picture"
                                                               name="picture"
                                                               onchange="checkImage(this,'{!! __('records.edit.image.title_res')!!}','{!! __('records.edit.image.type')!!}','{!! __('records.edit.image.size',['size'=>config('records.allowed_image_size')])!!}','{!! config('records.allowed_image_size')!!}','{!! __('records.edit.image.save_warning')!!}','{!!$picture!!}')"

                                                               autocomplete="off">
                                                        <label class="custom-file-label" id="custom-file-label"></label>


                                                    </div>
                                                </div>
                                            </div>
                                            <!--   ================================================================================-->
                                            @php
                                                $css = empty($picture) ? 'display: none' : '';
                                                $src = !empty($picture) ? $path_upload . $id . '/' . $picture : '';
                                                $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') || $_SERVER['SERVER_PORT'] == 443 ? "https://" : "http://";
                                                $domain = $protocol . $_SERVER['HTTP_HOST'];
                                            @endphp
                                            <input type="hidden" id="file_name_hidden" name="file_name_hidden"
                                                   value="{{$picture}}" autocomplete="off">
                                            <div class="form-group" id="picture_content" name="picture_content"
                                                 style=" {{$css}}">
                                                <div class="time-label">
                                                    <img id="upload_image"
                                                         class="img-circle img-bordered-sm modal_image"
                                                         data-target="#ModalImage"
                                                         width="70px" height="70px" alt="image" data-toggle="modal"
                                                         src="{{asset($src)}}"
                                                         data-url="{{$domain}}/{{$path_upload}}{{$id}}/{{ $picture}}"
                                                         data-title="{{$picture}}"
                                                         title="{{ $picture}}"
                                                         style="cursor: pointer">
                                                    <a href="#" class="btn btn-outline-danger"
                                                       onclick="delPhoto('{!! __('records.edit.image.delete_warning')!!}','{{$picture}}')"
                                                       title="{{__('records.edit.image.detach')}}">
                                                        <i class="fa fa-file-archive"></i>
                                                    </a>
                                                    <div class="timeline-item" id="file_name_"
                                                         title="{{$picture}}">{{$picture}}</div>
                                                </div>
                                            </div>
                                            <div class="timeline-item text-red" id="warning_message"></div>


                                            <a href="{{ url('record/'.$id_module.'/'.($record->association->id ?? $record->id_association).'/'.$record->id.'/'.$record->slug) }}" class="" target="_blank">преглед</a>
                                            <!--   ================================================================================-->


                                        </div>
                                    </div>
                                </div>
                                <!--   End Image ================================================================================-->

                                <!--   Documents ================================================================================-->
                                <div class="col-md-12">
                                    <div class="card card">

                                        <div class="card-header">
                                            <h3 class="card-title">{{__('records.edit.document.title')}}
                                            </h3>
                                            <button type="button" class="btn btn-tool">
                                                @if (!empty($id))
                                                    <a href="#" class="btn btn-warning btn-xs open_document"
                                                       data-toggle="modal" data-target="#ModalDocument"

                                                       data-css="needs-validation"

                                                       data-title="{{__('records.edit.document.attach')}}"
                                                       data-id=""
                                                       data-id_record="{{$id}}"
                                                       data-id_user="{{Auth::id()}}"
                                                       data-id_module="{{$id_module_}}"

                                                       data-url="{{$url_store_doc}}"
                                                       data-url_return="{{$url_return}}"
                                                       data-query="{{$query}}"
                                                       data-success="{{__('records.edit.document.attach_success')}}"
                                                       data-error="{{__('records.edit.document.attach_error')}}"

                                                       data-active="1"
                                                       data-public="1"
                                                       data-name=""
                                                       data-name_des="{{__('records.edit.document.name_des')}}"

                                                       data-file=""
                                                       data-file_name=""
                                                       data-file_name_desc="{{__('records.edit.document.file_des')}}"
                                                       data-comment=""

                                                       title="{{__('records.edit.document.attach')}}"><i
                                                            class="fa fa-plus"></i></a>
                                                @endif
                                            </button>

                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse"
                                                        data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
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
                                                               title="{{__('records.edit.document.active')}}"></i>
                                                        </th>

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
                                                            $document_public= $document->public ?? '';
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
                                                                     strlen($document_name) > 30
                                                                         ? (strpos($document_name, ' ', 30) !== false
                                                                             ? substr($document_name, 0, strpos($document_name, ' ', 30)) . '...'
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
                                                                @if($document->active == 0)
                                                                    <i class="fas fa-lock"
                                                                       title="{{__('global.deactivated')}}"></i>
                                                                @else
                                                                    <i class="fas fa-lock-open"
                                                                       title="{{__('global.active')}}"></i>
                                                                @endif
                                                            </td>
                                                            <td class="text-right py-0 align-middle">
                                                                <div class="btn-group btn-group-sm">

                                                                    <button class="btn btn-info" type="button"
                                                                            onclick="getContentID('{{$url_show_doc.'/'. $document_id }}','ModalShow','{{__('records.edit.document')}}')">
                                                                        <i class="fas fa-eye"
                                                                           title="{{__('global.show_hint')}}"></i>
                                                                    </button>

                                                                    <a href="#" class="btn btn-success open_document"
                                                                       data-toggle="modal" data-target="#ModalDocument"

                                                                       data-css="needs-validation"

                                                                       data-title="{{__('records.edit.document.attach')}}"

                                                                       data-id="{{$document_id}}"
                                                                       data-id_record="{{$id}}"
                                                                       data-id_user="{{Auth::id()}}"
                                                                       data-id_module="{{$id_module}}"

                                                                       data-url="{{$url_update_doc.'/'.$document_id}}"
                                                                       data-url_return="{{$url_return}}"
                                                                       data-query="{{$query}}"
                                                                       data-success="{{__('records.edit.document.attach_success')}}"
                                                                       data-error="{{__('records.edit.document.attach_error')}}"

                                                                       data-active="{{$document_active}}"
                                                                       data-public="{{$document_public}}"
                                                                       data-name="{{$document_name}}"
                                                                       data-name_des="{{__('records.edit.document.name_des')}}"

                                                                       data-file=""
                                                                       data-file_name="{{$document_file}}"
                                                                       data-file_name_desc="{{__('records.edit.document.file_des')}}"
                                                                       data-comment="{{$document_comment}}"
                                                                       title="{{__('global.edit_hint')}}"><i
                                                                            class="fa fa-edit"></i></a>

                                                                    <a href="#" class="btn btn-danger modal_warning"
                                                                       data-toggle="modal"
                                                                       data-target="#ModalWarning"

                                                                       data-title="{{__('global.delete_record')}}"
                                                                       data-url="{{$url_delete_doc}}/{{$document->id}}"

                                                                       data-content_l="id: {{$document->id}}, "
                                                                       data-content_b="{{ $document->name}},"
                                                                       data-content_sub_l="{{ $document->file}}"
                                                                       data-content_sub_b=""

                                                                       data-query="{{$query}}"
                                                                       data-url_return="{{$url_return}}"
                                                                       data-success="{{__('global.delete_success')}}"
                                                                       data-error="{{__('global.delete_error')}}"

                                                                       data-method="DELETE"

                                                                       title="{{__('global.delete_hint')}}">
                                                                        <i class="fa fa-trash"></i>
                                                                    </a>


                                                                </div>
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

                                        <!--   ================================================================================-->


                                    </div>
                                </div>
                                <!--  End Documents================================================================================-->

                            </div>
                            <!-- /.row-->
                        </div>
                        <!-- /.col-md-6 -->
                    </div>
                    <!-- /.row-->

                </form>

            </div>
            <!-- /.container-fluid -->

        </section>
        <!-- /.content -->

    </div>

@endsection

@section('additional_css')
    <!-- Select2 -->
    <link rel="stylesheet" href="{{ url('LTE/plugins/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{ url('LTE/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
    <!-- Toastr -->
    <link rel="stylesheet" href="{{ url('LTE/plugins/toastr/toastr.min.css')}}">
@endsection


@section('additional_js')
    <script src="{{url('app_admin/js/ckeditor/ckeditor.js')}}"></script>
    <script type="text/javascript">
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            //CKEDITOR.config.contentsCss = '/public_design/css/ckeditor.css';
            CKEDITOR.replace('text', {
                //filebrowserBrowseUrl :'/browser?Connector=/app_admin/js/ckeditor/filemanager/connectors/php/connector.php',
                //filebrowserUploadUrl: '/browser?command=QuickUpload&type=Files',
                filebrowserImageBrowseUrl: '/browser?Connector=/app_admin/js/ckeditor/filemanager/connectors/php/connector.php&type=Image',
            });

        });
    </script>
    <!-- Select2 -->
    <script src="{{url('LTE/plugins/select2/js/select2.full.min.js')}}"></script>

    <style>
        .daterangepicker.single .drp-buttons {
            display: block !important;
        }
    </style>
    <script>
        ////////////////////////////////////////////////////////////////////////
        // Query the elements
        ////////////////////////////////////////////////////////////////////////

        //Initialize Select2 Elements
        $('.select2bs4').select2({
            theme: 'bootstrap4'
        })


    </script>
@endsection
