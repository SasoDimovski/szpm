@extends('admin/master')

@section('content')

    <?php
    $id_module = $module->id ?? '';
    $lang = request()->segment(2);
    $query = request()->getQueryString();
    $listing = app('request')->input('listing', config('records.pagination'));

    $global_style = "cursor: pointer; color: #BD362F";
    $global_style_search = "background-color: #BD362F; color: #fff";

    $url = url('admin/' . $lang . '/' . $module->link);

    $url_base= 'admin/'.$lang.'/'.$id_module.'/records/';

    $url_create= url($url_base.'create/');
    $url_edit = url($url_base.'edit/');
    $url_show = url($url_base.'show/');
    $url_delete = url($url_base.'delete/');

    $url_excel = url(request()->segment(3)."/excel/".$query);
    $url_pdf = url(request()->segment(3)."/pdf/".$query);

    ?>
    @include('records::records._include-functions.function-highlight-search')
        <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1><i class="fa {{$module->design->icon}}"></i> {{$module->title}}
                            <a class="btn btn-danger btn-sm" href="{{$url_create}}">{{__('global.new_record')}}</a>
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
                                    $desc = __('records.id');
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

                                <div class="col-sm-12 col-md-4 col-lg-5 col-xl-3">
                                    <?php
                                    $name = 'id_association';
                                    $desc = __('records.id_association');

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
                                        @if(count($associations) > 0)
                                            <option value="">&nbsp;</option>
                                            @foreach($associations as $association)
                                                <option
                                                    value="{{$association->id}}" {{ ((app('request')->input($name))==$association->id)? 'selected' : '' }}>{{$association->name}}
                                                    (id:{{$association->id}})
                                                </option>
                                            @endforeach
                                        @endif
                                    </select>
                                </div>
                                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                                    <?php
                                    $name = 'title';
                                    $desc = __('records.title');
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
                        @if(count($records) > 0)
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
                                                class="badge badge-warning">{{ $records->firstItem() }}</span></strong>
                                        {{__('global.to')}}
                                        <strong> <span
                                                class="badge badge-warning">{{$records->lastItem() }}</span></strong>
                                        ({{__('global.sum')}}
                                        <strong> <span
                                                class="badge badge-danger">{{ $records->total() }}</span></strong>
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
                                                    $column_label = __('records.id');
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy({{$column_name}},'{{$sort}}')">{{$column_label}}</th>
                                                {{-- ========================================================================--}}
                                                    <?php
                                                    $column_name = 'id_association';
                                                    $column_label = __('records.id_association');
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy({{$column_name}},'{{$sort}}')">{{$column_label}}&nbsp;&nbsp;</th>
                                                {{-- ========================================================================--}}
                                                    <?php
                                                    $column_name = 'title';
                                                    $column_label = __('records.title');
                                                    $query_sort = request()->query('sort');
                                                    $style_acs_desc = ($query_sort == 'asc' && $order == $column_name) ? 'asc' : 'desc';
                                                    ?>
                                                <th class="sortable {{$style_acs_desc}}"
                                                    onclick="orderBy({{$column_name}},'{{$sort}}')">{{$column_label}}&nbsp;&nbsp;</th>
                                                {{-- ========================================================================--}}
                                                <th style="width: 2%"><i class="fas fa-lock"  title="{{__('global.active_status')}}"></i>
                                                </th>
                                                {{-- ========================================================================--}}
                                                <th style="width: 3%"></th>
                                                {{-- ========================================================================--}}
                                            </tr>
                                            </thead>

                                            <tbody>
                                            @foreach($records as $record)
                                                <tr @if($record->active == 0) style="color: #cccccc"  @endif >
                                                    <td>{!! highlightSearch($record->id, 'id', $global_style_search) !!}</td>
                                                    <td>{!! highlightSearch($record->association->name ?? '', 'association', $global_style_search) !!}</td>
                                                    <td title="{{$record->title}}"> <a href="{{$url_edit.'/'.$record->id.'?'.$query }}">{!! highlightSearch(\Illuminate\Support\Str::limit($record->title, 120, '...'), 'title', $global_style_search) !!} </a></td>
                                                    <td>
                                                        @if($record->active == 0)
                                                            <i class="fas fa-lock"
                                                               title="{{__('global.deactivated')}}"></i>
                                                        @else
                                                            <i class="fas fa-lock-open"
                                                               title="{{__('global.active')}}"></i>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            {{-------------------------------------------------------------------------------------------------------}}
                                                            <button class="btn btn-info"
                                                                    onclick="getContentID('{{$url_show.'/'. $record->id }}','ModalShow','{{ $module->title}}')">
                                                                <i class="fas fa-eye"
                                                                   title="{{__('global.show_hint')}}"></i></button>
                                                            {{-------------------------------------------------------------------------------------------------------}}

                                                                {{-------------------------------------------------------------------------------------------------------}}
                                                                <a href="{{$url_edit.'/'.$record->id.'?'.$query }}"
                                                                   class="btn btn-success"><i
                                                                        class="fa fa-edit"
                                                                        title="{{__('global.edit_hint')}}"></i></a>
                                                                {{-------------------------------------------------------------------------------------------------------}}
                                                                <a href="#" class="btn btn-danger modal_warning"
                                                                   data-toggle="modal"
                                                                   data-target="#ModalWarning"

                                                                   data-title="{{__('global.delete_record')}}"
                                                                   data-url="{{$url_delete.'/'.$record->id.'?'.$query }}"

                                                                   data-content_l="id: {{$record->id}}, "
                                                                   data-content_b="{{ $record->association->name}}, "
                                                                   data-content_sub_l="{{ $record->title}}"
                                                                   data-content_sub_b=""

                                                                   data-query="{{$query}}"
                                                                   data-url_return="{{$url}}"
                                                                   data-success="{{__('global.delete_success')}}"
                                                                   data-error="{{__('global.delete_error')}}"

                                                                   data-method="DELETE"

                                                                   title="{{__('global.delete_hint')}}">
                                                                    <i class="fa fa-trash"></i>
                                                                </a>
                                                                {{-------------------------------------------------------------------------------------------------------}}


                                                        </div>

                                                    </td>
                                                </tr>


                                            </tbody>
                                            @endforeach

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
                                            {{ $records->withQueryString()->links('pagination::bootstrap-4')  }}
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
    <!-- date-range-picker -->
    <link rel="stylesheet" href="{{ url('LTE/plugins/daterangepicker/daterangepicker.css')}}">


    <style>
        .daterangepicker.single .drp-buttons {
            display: block !important;
        }
    </style>
@endsection
@section('additional_js')
    <!-- Select2 -->
    <script src="{{url('LTE/plugins/select2/js/select2.full.min.js')}}"></script>

{{--    FOR DATE INPUT FIELD////////////////////////////////////////////////////////////////////////////////////////////////////////--}}
    <!-- Bootstrap4 Duallistbox -->
    <script src="{{url('LTE/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js')}}"></script>
    <!-- InputMask -->
    <script src="{{url('LTE/plugins/moment/moment.min.js')}}"></script>
    <script src="{{url('LTE/plugins/inputmask/min/jquery.inputmask.bundle.min.js')}}"></script>
    <!-- date-range-picker -->
    <script src="{{url('LTE/plugins/daterangepicker/daterangepicker.js')}}"></script>
    <!-- bs-custom-file-input -->
    <script src="{{url('LTE/plugins/bs-custom-file-input/bs-custom-file-input.min.js')}}"></script>
{{--    .END FOR DATE INPUT FIELD////////////////////////////////////////////////////////////////////////////////////////////////////////--}}


    <script>

        $(document).ready(function () {
            // Иницијализација на bsCustomFileInput
            bsCustomFileInput.init();

            // Конфигурација за Date Range Picker
            const datePickerConfig = {
                singleDatePicker: true,
                autoUpdateInput: false,
                showDropdowns: true,
                locale: {
                    format: "DD.MM.YYYY",
                    separator: " - ",
                    applyLabel: "Внеси",
                    cancelLabel: "Бриши",
                    fromLabel: "From",
                    toLabel: "To",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["Не", "По", "Вт", "Ср", "Че", "Пе", "Са"],
                    monthNames: [
                        "Јануари", "Февруари", "Март", "Април", "Мај", "Јуни",
                        "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември"
                    ],
                    firstDay: 1
                }
            };

            // Функција за иницијализација на Date Range Picker за дадено поле
            function initializeDatePicker(selector) {
                const inputField = $(selector);

                inputField.daterangepicker(datePickerConfig);

                inputField.on('apply.daterangepicker', function (ev, picker) {
                    $(this).val(picker.startDate.format('DD.MM.YYYY'));
                });

                inputField.on('cancel.daterangepicker', function () {
                    $(this).val('');
                });
            }

            // Иницијализација за `start_date` и `end_date`
            initializeDatePicker('input[name="start_date"]');
            initializeDatePicker('input[name="end_date"]');
        });


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
