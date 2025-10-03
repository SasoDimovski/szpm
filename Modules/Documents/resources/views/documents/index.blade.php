@extends('admin/master')

@section('content')

    <?php
    $id_module = $module->id ?? '';
    $lang = request()->segment(2);
    $query = request()->getQueryString();
    $listing = app('request')->input('listing', config('documents.pagination'));

    $global_style = "cursor: pointer; color: #BD362F";
    $global_style_search = "background-color: #BD362F; color: #fff";

    $url = url('admin/' . $lang . '/' . $module->link);

    $url_base= 'admin/'.$lang.'/'.$id_module.'/documents/';

    $url_return= 'admin/'.$lang.'/'.$id_module.'/documents/';

    $url_store= url($url_base. 'store/');
    $url_create= url($url_base.'create/');
    $url_update= url($url_base.'update/');
    $url_edit = url($url_base.'edit/');
    $url_show = url($url_base.'show/');
    $url_delete = url($url_base.'delete/');

    $url_excel = url(request()->segment(3)."/excel/".$query);
    $url_pdf = url(request()->segment(3)."/pdf/".$query);
    $path_upload = 'uploads/documents/';

    ?>
    @include('documents::documents._include-functions.function-highlight-search')
        <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1><i class="fa {{$module->design->icon}}"></i> {{$module->title}}


{{--                            <a class="btn btn-danger btn-sm" href="{{$url_create}}">{{__('global.new_record')}}</a>--}}

                            <button type="button" class="btn btn-tool">

                                    <a href="#" class="btn btn-warning btn-xs open_document"
                                       data-toggle="modal" data-target="#ModalDocument"

                                       data-css="needs-validation"

                                       data-title="{{__('documents.attach')}}"
                                       data-id=""
                                       data-id_record=""
                                       data-id_user="{{Auth::id()}}"
                                       data-id_module="{{$id_module}}"

                                       data-url="{{$url_store}}"
                                       data-url_return="{{$url_return}}"
                                       data-query="{{$query}}"
                                       data-success="{{__('documents.attach_success')}}"
                                       data-error="{{__('documents.attach_error')}}"

                                       data-active="1"
                                       data-public="0"
                                       data-name=""
                                       data-name_des="{{__('documents.name_des')}}"

                                       data-file=""
                                       data-file_name=""
                                       data-file_name_desc="{{__('documents.file_des')}}"
                                       data-comment=""

                                       title="{{__('documents.attach')}}"><i
                                            class="fa fa-plus"></i></a>

                            </button>

                        </h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a
                                    href="{{$url}}">{{$module->title}}</a>
                            </li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>


        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">

                <!-- Search =============================================================================================== -->
                <form class="form-horizontal" name="form_search" id="form_search" method="get" action=""
                      accept-charset="UTF-8">
                    <input type="hidden" id="page" name="page" value="{{ app('request')->input('page') }}">
                    <!-- card card-red card-outline =============================================================================================== -->
                    <div class="card card-red card-outline">
                        <div class="card-body">
                            <div class="row">

                                <div class="col-sm-12 col-md-1 col-lg-1 col-xl-1">
                                    <?php
                                    $name = 'id';
                                    $desc = __('documents.id');
                                    $maxlength = 10;

                                    $value = app('request')->input($name) ? app('request')->input($name) : null;
                                    $style = app('request')->input($name) ? $global_style : null;
                                    $x = app('request')->input($name) ? ('    x') : null;
                                    ?>
                                    <label class="control-label">{{$desc}}
                                        <b onclick="deleteSearchField('{{$name}}')" style="{{$style}}"
                                           title="{{__('global.delete_search_field_des')}}">{{$x}}</b>
                                    </label>
                                    <input type="text" id="{{$name}}" name="{{$name}}"
                                           class="form-control form-control-sm"
                                           value="{{$value}}"
                                           placeholder="{{$desc}}" maxlength="{{$maxlength}}">
                                </div>
                                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                                    <?php
                                    $name = 'name';
                                    $desc = __('documents.name');
                                    $maxlength = 100;

                                    $value = app('request')->input($name) ? app('request')->input($name) : null;
                                    $style = app('request')->input($name) ? $global_style : null;
                                    $x = app('request')->input($name) ? ('    x') : null;
                                    ?>
                                    <label class="control-label">{{$desc}}
                                        <b onclick="deleteSearchField('{{$name}}')" style="{{$style}}"
                                           title="{{__('global.delete_search_field')}}">{{$x}}</b>
                                    </label>
                                    <input type="text" id="{{$name}}" name="{{$name}}"
                                           class="form-control form-control-sm"
                                           value="{{$value}}"
                                           placeholder="{{$desc}}" maxlength="{{$maxlength}}">
                                </div>


                                <div class="col-sm-12 col-md-4 col-lg-5 col-xl-3">
                                    <?php
                                    $name = 'type';
                                    $desc = __('documents.type');
                                    $options = [
                                        'pdf' => 'pdf',
                                        'xls' => 'xls',
                                        'xlsx' => 'xlsx',
                                        'docx' => 'docx',
                                        'doc' => 'doc',
                                        'txt' => 'txt',
                                    ];

                                    $value = app('request')->input($name) ? app('request')->input($name) : null;
                                    $style = app('request')->input($name) ? $global_style : null;
                                    $x = app('request')->input($name) ? ('    x') : null;
                                    ?>
                                    <label class="control-label">{{$desc}}
                                        <b onclick="deleteSearchField('{{$name}}')" style="{{$style}}"
                                           title="{{__('global.delete_search_field')}}">{{$x}}</b>
                                    </label>
                                    <select class="select2"
                                            id="{{$name}}" name="{{$name}}" onchange="this.form.submit()"
                                            style="width: 100%">
                                        <option value=""></option>
                                        @foreach($options as $value => $label)
                                            <option value="{{ $value }}"
                                                {{ ((app('request')->input($name))==$value)? 'selected' : '' }}>
                                                {{ $label }}
                                            </option>
                                        @endforeach

                                    </select>
                                </div>


                            </div>

                            <div class="row" style="height: 7px"></div>

                            <div class="row">

                                <div class="col-sm-6 col-md-2 col-lg-3 col-xl-2">
                                    <div class="row" style="height: 17px"></div>
                                    <div class="custom-control custom-checkbox">
                                        <?php
                                        $name = 'active';
                                        $desc = __('global.active');
                                        ?>
                                        <input class="custom-control-input" type="checkbox" id="{{$name}}"
                                               name="{{$name}}" value="1"
                                               {{ ((app('request')->input($name))!='')? 'checked' : '' }}  onchange="this.form.submit()">
                                        <label for="{{$name}}"
                                               class="custom-control-label"
                                               id="{{$name}}">{{$desc}}</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <?php
                                        $name = 'deactivated';
                                        $desc = __('global.deactivated');
                                        ?>
                                        <input class="custom-control-input" type="checkbox" id="{{$name}}"
                                               name="{{$name}}" value="1"
                                               {{ ((app('request')->input($name))!='')? 'checked' : '' }}  onchange="this.form.submit()">
                                        <label for="{{$name}}"
                                               class="custom-control-label"
                                               id="{{$name}}">{{$desc}}</label>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-2 col-lg-1 col-xl-1">
                                    <?php
                                    $name = 'listing';
                                    $desc = __('global.listing');
                                    $options = [
                                        1 => '1',
                                        15 => '15',
                                        50 => '50',
                                        100 => '100',
                                        200 => '200',
                                        'a' => __('global.all'),
                                    ];
                                    ?>
                                    <label class="control-label">{{ $desc }}</label>
                                    <select id="{{ $name }}" name="{{ $name }}" class="form-control form-control-sm" onchange="this.form.submit()">
                                        @foreach($options as $value => $label)
                                            <option value="{{ $value }}"
                                                {{ $listing == $value ? 'selected' : '' }}>
                                                {{ $label }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-sm-6 col-md-2  col-lg-2 col-xl-2">
                                    <label class="control-label"> &nbsp;</label>
                                    <button type="button"
                                            class="form-control form-control-sm btn btn-outline-secondary btn-sm"
                                            title="{{__('global.reset_button_des')}}"
                                            onClick="window.open('{{ $url}}','_self');"> {{__('global.reset_button')}}
                                    </button>
                                </div>

                                <div class="col-sm-6 col-md-2  col-lg-2 col-xl-2">
                                    <label class="control-label"> &nbsp;</label>
                                    <button type="submit"
                                            class="form-control form-control-sm btn btn-outline-danger btn-sm"
                                            title="{{__('global.search_button')}} ">{{__('global.search_button')}}
                                    </button>
                                </div>

{{--                                <div class="col-sm-6">--}}
{{--                                    <label class="control-label"> &nbsp;</label>--}}
{{--                                    <a class="btn btn-danger btn-sm" href="#" onClick="window.open('{{ $url}}','_self');">{{__('global.reset_button')}}</a>--}}
{{--                                </div>--}}

                            </div>
                        </div>
                    </div>
                </form>
                <!-- card card-red card-outline  END =============================================================================================== -->
                <!-- Search end=============================================================================================== -->
                @include('admin._flash-message')
                <!-- Table =============================================================================================== -->
                <div class="card card-gray card-outline">

                    <div class="card-body scrollmenu">
                        @include('flash::message')
                        @if(count($documents) > 0)
                                <?php
                                $order = request()->query('order');
                                $sort = (request()->query('sort') == 'asc') ? 'desc' : 'asc';
                                ?>
                            <div class="dataTables_wrapper dt-bootstrap4">

                                <!-- Page =============================================================================================== -->
                                <div class="row">
                                    <div class="col-sm-12 col-md-5">
                                        {{__('global.show_from')}}
                                        <strong> <span
                                                class="badge badge-warning">{{ $documents->firstItem() }}</span></strong>
                                        {{__('global.to')}}
                                        <strong> <span
                                                class="badge badge-warning">{{$documents->lastItem() }}</span></strong>
                                        ({{__('global.sum')}}
                                        <strong> <span
                                                class="badge badge-danger">{{ $documents->total() }}</span></strong>
                                        {{__('global.records')}})
                                    </div>
                                </div>
                                <!-- Page end =============================================================================================== -->


                                <div class="row">
                                    <div class="col-sm-12">

                                        <table id="example2" class="table_grid">
                                            <thead>
                                            <tr>
                                                {{-- ========================================================================--}}
                                                    <?php
                                                    $column_name = 'id';
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy('id','{{$sort}}')">{{__('documents.id')}}&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                {{-- ========================================================================--}}
                                                    <?php
                                                    $column_name = 'name';
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy('{{$column_name}}','{{$sort}}')">{{__('documents.name')}}&nbsp;&nbsp;&nbsp;&nbsp;
                                                </th>
                                                {{-- ========================================================================--}}
                                                    <?php
                                                    $column_name = 'file';
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy('{{$column_name}}','{{$sort}}')">{{__('documents.file')}}&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                {{-- ========================================================================--}}
                                                    <?php
                                                    $column_name = 'type';
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy('{{$column_name}}','{{$sort}}')">{{__('documents.type')}}&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                {{-- ========================================================================--}}
                                                    <?php
                                                    $column_name = 'size';
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy('{{$column_name}}','{{$sort}}')">{{__('documents.size')}}</th>
                                                {{-- ========================================================================--}}
                                                <th style="width: 2%"><i class="fas fa-lock"  title="{{__('global.active_status')}}"></i>
                                                </th>
                                                {{-- ========================================================================--}}
                                                <th style="width: 2%">{{__('documents.public')}}&nbsp;&nbsp;&nbsp;&nbsp;
                                                </th>
                                                {{-- ========================================================================--}}
                                                <th style="width: 7%"></th>
                                                {{-- ========================================================================--}}
                                            </tr>
                                            </thead>


                                            <tbody>
                                            @foreach($documents as $document)

                                                <tr @if($document->active == 0) style="color: #cccccc" @endif>
                                                    <td>{!! highlightSearch($document->id, 'id', $global_style_search) !!}</td>
                                                    <td>{!! highlightSearch($document->name, 'name', $global_style_search) !!}</td>
                                                    <td>
                                                        <a href="{{ asset($path_upload . $document->id . '/' . $document->file) }}"
                                                           class="btn-link text-secondary"
                                                           download>
                                                            {{$document->file }}
                                                        </a>
                                                    </td>
                                                    <td>{!! highlightSearch($document->type, 'type', $global_style_search) !!}</td>
                                                    <td>{!! highlightSearch($document->size, 'type', $global_style_search) !!}</td>
                                                    <td>
                                                        @if($document->active == 0)
                                                            <i class="fas fa-lock"
                                                               title="{{__('global.deactivated')}}"></i>
                                                        @else
                                                            <i class="fas fa-lock-open"
                                                               title="{{__('global.active')}}"></i>
                                                        @endif
                                                    </td>
                                                    <td class="text-center">
                                                        @if($document->public == 1)
                                                            <i class="fas fa-check"
                                                               title="{{__('documents.public')}}"></i>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">

                                                            <button class="btn btn-info" type="button"
                                                                    onclick="getContentID('{{$url_show.'/'. $document->id }}','ModalShow','{{__('documents')}}')">
                                                                <i class="fas fa-eye"
                                                                   title="{{__('global.show_hint')}}"></i>
                                                            </button>

                                                            <a href="#" class="btn btn-success open_document"
                                                               data-toggle="modal" data-target="#ModalDocument"

                                                               data-css="needs-validation"

                                                               data-title="{{__('documents.attach')}}"

                                                               data-id="{{$document->id}}"
                                                               data-id_record=""
                                                               data-id_user="{{Auth::id()}}"
                                                               data-id_module="{{$id_module}}"

                                                               data-url="{{$url_update.'/'.$document->id}}"
                                                               data-url_return="{{$url_return}}"
                                                               data-query="{{$query}}"
                                                               data-success="{{__('documents.attach_success')}}"
                                                               data-error="{{__('documents.attach_error')}}"

                                                               data-active="{{$document->active}}"
                                                               data-public="{{$document->public}}"
                                                               data-name="{{$document->name}}"
                                                               data-name_des="{{__('documents.name_des')}}"

                                                               data-file=""
                                                               data-file_name="{{$document->file}}"
                                                               data-file_name_desc="{{__('record.edit.document.file_des')}}"
                                                               data-comment="{{$document->comment}}"
                                                               title="{{__('global.edit_hint')}}"><i
                                                                    class="fa fa-edit"></i></a>

                                                            <a href="#" class="btn btn-danger modal_warning"
                                                               data-toggle="modal"
                                                               data-target="#ModalWarning"

                                                               data-title="{{__('global.delete_record')}}"
                                                               data-url="{{$url_delete}}/{{$document->id}}"

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
                                                </tr>

                                            @endforeach
                                            </tbody>


                                        </table>
                                    </div>
                                </div>

                                <!-- Page =============================================================================================== -->

                                <div class="row">
                                    <div class="col-sm-6 col-md-6">

                                            <?php
                                            $query = request()->getQueryString();
                                            if (empty($query)) {
                                                $query = 'r';
                                            }
                                            ?>
{{--                                        <a class="btn btn-default btn-sm"
                                           href="{{ $url_pdf}}"
                                           title="{{__('global.export_pdf')}}"><i
                                                class="fa fa-print"></i> {{__('global.export_pdf')}}
                                        </a>
                                        <a class="btn btn-default btn-sm"
                                           href="{{$url_excel}}"
                                           title="{{__('global.export_csv')}}"><i
                                                class="fa fa-print"></i> {{__('global.export_csv')}}
                                        </a>--}}
                                    </div>


                                    <div class="col-sm-6 col-md-6">
                                        <div class="pagination pagination-sm float-right">
                                            {{ $documents->withQueryString()->links('pagination::bootstrap-4')  }}
                                        </div>

                                    </div>

                                </div>
                                <!-- Page end =============================================================================================== -->
                            </div>
                        @else
                            {{__('global.no_records')}}
                        @endif
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
                <!-- Table end =============================================================================================== -->


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
@endsection
@section('additional_js')
    <!-- Select2 -->
    <script src="{{url('LTE/plugins/select2/js/select2.full.min.js')}}"></script>

    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2bs4').select2({
                theme: 'bootstrap4'
            })
            //Initialize Select2 Elements
            $('.select2').select2()
        })
    </script>
@endsection
