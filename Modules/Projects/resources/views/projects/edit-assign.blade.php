<?php

$id_module = $module->id ?? '';
$lang = request()->segment(2);
$id_project= request()->segment(6);
$query = request()->getQueryString();

$id = $assignment->id ?? '';
$name = $assignment->name ?? old('name');
$description = $assignment->description ?? old('description');
$code = $assignment->code  ?? old('code');

$start_date = (isset($assignment->start_date)) ? date("d.m.Y H:i:s", strtotime($assignment->start_date)) : old('start_date');
$end_date = (isset($assignment->end_date)) ? date("d.m.Y H:i:s", strtotime($assignment->end_date)) : old('end_date');

$dateinserted = (isset($assignment->dateinserted)) ? date("d.m.Y H:i:s", strtotime($assignment->dateinserted)) : '';
$dateupdated = (isset($assignment->dateupdated)) ? date("d.m.Y H:i:s", strtotime($assignment->dateupdated)) : '';

$insertedby = $assignment->insertedby ?? old('insertedby');
$updatedby = $assignment->updatedby ?? old('updatedby');

$isExpired = isset($assignment->end_date) && \Carbon\Carbon::now()->greaterThan(\Carbon\Carbon::parse($assignment->end_date));

$url_store = url('admin/' . $lang . '/' . $id_module . '/projects/store_assign/'. $id_project);
$url_update = url('admin/' . $lang . '/' . $id_module . '/projects/update_assign/' . $id);
$url_action = !empty($id) ? $url_update : $url_store;
$url_return = url('admin/' . $lang . '/' . $id_module . '/projects/edit/' . $id_project);

$message_error = (isset($id)) ? __('global.update_error') : __('global.save_error');
$message_success = (isset($id)) ? __('global.update_success') : __('global.save_success');

?>
    <!-- Form-->
<form class="needs-validation" role="form" id="form_edit_" name="form_edit_"  action="{{ "{$url_action}" }}" method="POST" enctype="multipart/form-data">

    <input type="hidden" id="url_return" name="url_return" value="{{ $url_return }}">
    <input type="hidden" id="query" name="query" value="{{$query}}">
    <input type="hidden" id="message_error" name="message_error" value="{{ $message_error }}">
    <input type="hidden" id="message_success" name="message_success" value="{{ $message_success }}">

    <input type="hidden" id="id" name="id" value="{{ $id}}">
    <input type="hidden" id="id_module" name="id_module" value="{{ $id_module}}">
    {{csrf_field()}}
    @method('PUT')



            <div class="card card">

                <div class="card-header">
                    @if($isExpired) &nbsp;<i class="fas fa-archive text-danger" title="{{__('global.deactivated')}}"></i>@endif

                    <h3 class="card-title">  @if(isset($id)&&!empty($id)) id: {{$id}}@else {{__('global.new_record')}} @endif</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    {{--=========================================================--}}

                    <div class="row">

                        <div class="col-sm-6">
                            <?php
                            $input_value = $name;
                            $input_name = 'name';
                            $input_desc = __('projects.assignments_title');
                            $input_maxlength = 100;
                            $input_readonly= '';
                            $input_required= 'required';
                            $input_css= 'text-red';
                            ?>
                            <div class="form-group">
                                <label for="{{$input_name}}" class="{{$input_css}}">{{$input_desc}} *</label>
                                <input type="text" id="{{$input_name}}" name="{{$input_name}}" class="form-control" value="{{$input_value}}"
                                       maxlength="{{$input_maxlength}}" {{$input_readonly}} required>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <?php
                            $input_value = $code;
                            $input_name = 'code';
                            $input_desc = __('projects.code');
                            $input_maxlength = 100;
                            $input_readonly= '';
                            $input_required= 'required';
                            $input_css= 'text-red';
                            ?>
                            <div class="form-group">
                                <label for="{{$input_name}}" class="{{$input_css}}">{{$input_desc}} *</label>
                                <input type="text" id="{{$input_name}}" name="{{$input_name}}" class="form-control" value="{{$input_value}}"
                                       maxlength="{{$input_maxlength}}" {{$input_readonly}} {{$input_required}}>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <?php
                            $input_value = $start_date;
                            $input_name = 'start_date_';
                            $input_desc = __('projects.start_date');
                            $input_maxlength = 100;
                            $input_readonly= 'readonly';
                            $input_css= 'text';
                            ?>
                            <div class="form-group">
                                <i class="fas fa-calendar text-info"></i> <label for="{{$input_name}}" class="{{$input_css}}">{{$input_desc}}</label>
                                <input type="text" id="{{$input_name}}" name="{{$input_name}}" class="form-control" value="{{$input_value}}"
                                       maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                                <!-- Сокриено поле што ќе ја испрати вредноста -->
                                <input type="hidden" name="{{$input_name}}" id="{{$input_name}}_hidden" value="{{$input_value}}">
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <?php
                            $input_value = $end_date;
                            $input_name = 'end_date_';
                            $input_desc = __('projects.end_date');
                            $input_maxlength = 100;
                            $input_readonly= 'readonly';
                            $input_css= 'text';
                            ?>
                            <div class="form-group">
                                <i class="fas fa-calendar text-info"></i>  <label for="{{$input_name}}" class="{{$input_css}}">{{$input_desc}}</label>
                                <input type="text" id="{{$input_name}}" name="{{$input_name}}" class="form-control" value="{{$input_value}}"
                                       maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                                <!-- Сокриено поле што ќе ја испрати вредноста -->
                                <input type="hidden" name="{{$input_name}}" id="{{$input_name}}_hidden" value="{{$input_value}}">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <?php
                            $input_value = $description;
                            $input_name = 'description';
                            $input_desc = __('projects.description');
                            $input_maxlength = 255;
                            $input_raws = 2;
                            $input_readonly= '';
                            $input_css= 'text';
                            ?>
                            <div class="form-group"><i class="fas fa-comment text-info"></i>
                                <label class="{{$input_css}}">{{$input_desc}}</label>
                                <textarea class="form-control" id="{{$input_name}}" name="{{$input_name}}" rows="{{$input_raws}}"
                                          placeholder="{{$input_desc}}" maxlength="{{$input_maxlength}}"  {{$input_readonly}}>{{$input_value}}</textarea>
                            </div>
                        </div>

                    </div>
                    {{--=========================================================--}}

                    @if(isset($id)&&!empty($id))

                        <div class="row">
                            <div class="col-sm-6">
                                <i class="fas fa-user text-success"></i>
                                <strong>{{__('projects.insertedby')}}:</strong> {{$insertedby_}}<br>
                                <i class="fas fa-user text-success"></i>
                                <strong>{{__('projects.updatedby')}}:</strong> {{$updatedby_}}<br>
                            </div>
                            <div class="col-sm-6">
                                <i class="fas fa-clock text-warning"></i>
                                <strong>{{__('projects.dateinserted')}}:</strong> {{$dateinserted}}<br>
                                <i class="fas fa-clock text-warning"></i>
                                <strong>{{__('projects.dateupdated')}}:</strong> {{$dateupdated}}
                            </div>

                                <?php
                                $input_value = $insertedby;
                                $input_name = 'insertedby';
                                ?>
                            <input type="hidden" id="{{$input_name}}" name="{{$input_name}}"
                                   value="{{$input_value}}">
                                <?php
                                $input_value = $updatedby;
                                $input_name = 'updatedby';
                                ?>
                            <input type="hidden" id="{{$input_name}}" name="{{$input_name}}"
                                   value="{{$input_value}}">
                                <?php
                                $input_value = $dateinserted;
                                $input_name = 'dateinserted';
                                ?>
                            <input type="hidden" id="{{$input_name}}" name="{{$input_name}}"
                                   class="form-control" value="{{$input_value}}">
                                <?php
                                $input_value = $dateupdated;
                                $input_name = 'dateupdated';
                                ?>
                            <input type="hidden" id="{{$input_name}}" name="{{$input_name}}"
                                   class="form-control" value="{{$input_value}}"
                                   maxlength="{{$input_maxlength}}" {{$input_readonly}}>
                        </div>

                    @endif
                    {{--=========================================================--}}
                    <button type="submit"
                            class="btn btn-success float-right">{{__('global.save')}}</button>
                </div>
                <!-- /.card-body -->

{{--                <div class="card-footer">--}}
{{--                    --}}
{{--                </div>--}}
                <!-- /.card-footer -->
            </div>
            <!-- /.card -->


</form>
<!-- /.form -->

<!-- Select2 -->
<link rel="stylesheet" href="{{ url('LTE/plugins/select2/css/select2.min.css')}}">
<link rel="stylesheet" href="{{ url('LTE/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
<!-- date-range-picker -->
<link rel="stylesheet" href="{{ url('LTE/plugins/daterangepicker/daterangepicker.css')}}">
<!-- Toastr -->
<link rel="stylesheet" href="{{ url('LTE/plugins/toastr/toastr.min.css')}}">



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


<style>
    .daterangepicker.single .drp-buttons {
        display: block !important;
    }
    .daterangepicker {
        z-index: 1055 !important;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        // Иницијализација на bsCustomFileInput
        bsCustomFileInput.init();
       // Конфигурација за Date Picker
        const dateTimePickerConfig = {
            singleDatePicker: true,
            autoUpdateInput: false,
            timePicker: false,
            timePicker24Hour: true,
            timePickerSeconds: true,
            showDropdowns: true,
            locale: {
                format: "DD.MM.YYYY HH:mm:ss", // Формат за датум и време
                // applyLabel: "Внеси",
                // cancelLabel: "Бриши",
                fromLabel: "From",
                toLabel: "To",
                customRangeLabel: "Custom",
                weekLabel: "W",
                // daysOfWeek: ["Не", "По", "Вт", "Ср", "Че", "Пе", "Са"],
                // monthNames: [
                //     "Јануари", "Февруари", "Март", "Април", "Мај", "Јуни",
                //     "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември"
                // ],
                firstDay: 1
            }
        };
        // Иницијализирај Date Pickers за старт и крај
        initializeDateTimePicker('#form_edit_ input[name="start_date_"]');
        //initializeDateTimePicker('#form_edit_ input[name="end_date_"]');
        initializeEndDateTimePicker('#form_edit_ input[name="end_date_"]');

        function initializeDateTimePicker(selector) {
            const inputField = $(selector);

            inputField.daterangepicker(dateTimePickerConfig);

            inputField.on('apply.daterangepicker', function (ev, picker) {
                picker.endDate.set({
                    hour: 23,
                    minute: 59,
                    second: 59
                });
                $(this).val(picker.startDate.format('DD.MM.YYYY HH:mm:ss'));
                $('#start_date__hidden').val(picker.startDate.format('DD.MM.YYYY HH:mm:ss'));
            });

            inputField.on('cancel.daterangepicker', function () {
                $(this).val('');
            });
        }
        // Функција за end_date која секогаш го поставува времето на 23:59:59
        function initializeEndDateTimePicker(selector) {
            const inputField = $(selector);

            inputField.daterangepicker(dateTimePickerConfig);

            inputField.on('apply.daterangepicker', function (ev, picker) {
                // Присилно поставување на 23:59:59 за end_date
                picker.startDate.set({
                    hour: 23,
                    minute: 59,
                    second: 59
                });
                $(this).val(picker.startDate.format('DD.MM.YYYY HH:mm:ss'));
                $('#end_date__hidden').val(picker.startDate.format('DD.MM.YYYY HH:mm:ss'));
            });

            inputField.on('cancel.daterangepicker', function () {
                $(this).val('');
            });
        }
    });

</script>


