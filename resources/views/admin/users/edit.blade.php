@extends('admin.layouts.master')

@section('title', 'Edit Profile')

@section('head_style')
  <!-- intlTelInput -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/backend/intl-tel-input-13.0.0/intl-tel-input-13.0.0/build/css/intlTelInput.css')}}">
@endsection

@section('page_content')
    <div class="box">
       <div class="panel-body">
            <ul class="nav nav-tabs cus" role="tablist">
                <li class="active">
                  <a href='{{url("admin/users/edit/$users->id")}}'>Profile</a>
                </li>

                <li>
                  <a href="{{url("admin/users/transactions/$users->id")}}">Transactions</a>
                </li>
                <li>
                  <a href="{{url("admin/users/wallets/$users->id")}}">Wallets</a>
                </li>
                <li>
                  <a href="{{url("admin/users/tickets/$users->id")}}">Tickets</a>
                </li>
                <li>
                  <a href="{{url("admin/users/disputes/$users->id")}}">Disputes</a>
                </li>
           </ul>
          <div class="clearfix"></div>
       </div>
    </div>

    {{-- <h3>{{ $users->first_name.' '.$users->last_name }}</h3> --}}

    <div class="row">
        <div class="col-md-3">
            <h3>{{ $users->first_name.' '.$users->last_name }}</h3>
        </div>
        <div class="col-md-5"></div>

        <div class="col-md-4">
            <div class="pull-right">
                <a style="margin-top: 15px;" href="{{ url('admin/users/deposit/create/'.$users->id) }}" class="btn button-secondary btn-flat">Deposit</a>
                &nbsp;&nbsp;&nbsp;
                <a style="margin-top: 15px;" href="{{ url('admin/users/withdraw/create/'.$users->id) }}" class="btn button-secondary btn-flat">@lang('message.dashboard.button.payout')</a>
            </div>
        </div>
    </div>


    <div class="box">
      <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                <!-- form start -->
                <form action="{{ url('admin/users/update') }}" class="form-horizontal" id="user_form" method="POST">
                    {{ csrf_field() }}

                    <input type="hidden" value="{{ $users->id }}" name="id" id="id" />
                    <input type="hidden" value="{{ $users->defaultCountry }}" name="user_defaultCountry" id="user_defaultCountry" />
                    <input type="hidden" value="{{ $users->carrierCode }}" name="user_carrierCode" id="user_carrierCode" />


                    <div class="box-body">
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="inputEmail3">
                                            First Name
                                        </label>
                                        <div class="col-sm-8">
                                            <input class="form-control" placeholder="Update First Name" name="first_name" type="text" id="first_name" value="{{ $users->first_name }}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="inputEmail3">
                                            Last Name
                                        </label>
                                        <div class="col-sm-8">
                                            <input class="form-control" placeholder="Update Last Name" name="last_name" type="text" id="last_name" value="{{ $users->last_name }}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="inputEmail3">
                                            Phone
                                        </label>
                                        <div class="col-sm-8">
                                            <input type="tel" class="form-control" id="phone" name="phone" value="{{ !empty($users->phone) ? '+'.$users->carrierCode.$users->phone : NULL }}">
                                            <span id="phone-error"></span>
                                            <span id="tel-error"></span>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label require" for="inputEmail3">
                                            Email
                                        </label>
                                        <div class="col-sm-8">
                                            <input class="form-control" placeholder="Update Email" name="email" type="email" id="email" value="{{ $users->email }}">
                                            <span id="email-error"></span>
                                            <span id="email-ok" class="text-success"></span>
                                        </div>
                                    </div>

                                    {{-- Role --}}
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label require" for="inputEmail3">Group</label>
                                        <div class="col-sm-8">
                                            <select class="select2" name="role" id="role">
                                                {{-- <option value='' selected="selected"> Select Group </option> --}}
                                                @foreach ($roles as $role)
                                                  <option value='{{ $role->id }}' {{ $role->id == $users->role_id ? 'selected':""}}> {{ $role->display_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-sm-4 control-label require" for="inputEmail3">
                                            Password
                                        </label>
                                        <div class="col-sm-8">
                                            <input class="form-control" placeholder="Update Password (min 6 characters)" name="password" type="password" id="password">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-4 control-label require" for="inputEmail3">
                                            Confirm Password
                                        </label>
                                        <div class="col-sm-8">
                                            <input class="form-control" placeholder="Confirm password (min 6 characters)" name="password_confirmation" type="password" id="password_confirmation">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-4" for="inputEmail3">
                                        </label>
                                        <div class="col-sm-8">
                                            <a class="btn btn-danger btn-flat" href="{{ url('admin/users') }}" id="users_cancel">
                                                Cancel
                                            </a>
                                            <button type="submit" class="btn btn-primary pull-right btn-flat" id="users_edit">
                                                <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="users_edit_text">Update</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
      </div>
    </div>
@endsection

@push('extra_body_scripts')

<!-- jquery.validate -->
<script src="{{ asset('public/dist/js/jquery.validate.min.js') }}" type="text/javascript"></script>

<script src="{{ asset('public/backend/intl-tel-input-13.0.0/intl-tel-input-13.0.0/build/js/intlTelInput.js')}}" type="text/javascript"></script>

<script type="text/javascript">

    jQuery.validator.addMethod("letters_with_spaces_and_dot", function(value, element)
    {
        return this.optional(element) || /^[A-Za-z. ]+$/i.test(value); //letters + dot(.) symbol
    }, "Please enter letters & only dot(.) symbol is allowed!");

    jQuery.validator.addMethod("letters_with_spaces", function(value, element)
    {
        return this.optional(element) || /^[A-Za-z ]+$/i.test(value); //only letters
    }, "Please enter letters only!");


    $('#user_form').validate({
        rules: {
            first_name: {
                required: true,
                letters_with_spaces_and_dot: true,
            },
            last_name: {
                required: true,
                letters_with_spaces: true,
            },
            email: {
                required: true,
                email: true,
            },
            password: {
                minlength: 6,
            },
            password_confirmation: {
                minlength: 6,
                equalTo: "#password",
            },
        },
        messages: {
            password_confirmation: {
              equalTo: "Please enter same value as the password field!",
            },
        },
        submitHandler: function(form)
        {
            $("#users_edit").attr("disabled", true);
            $(".spinner").show();
            $("#users_edit_text").text('Updating...');
            $('#users_cancel').attr("disabled","disabled");
            form.submit();
        }
    });

    $(function () {
        $(".select2").select2({
        });
    });

/*
intlTelInput
 */
    $(document).ready(function() {

        $("#phone").intlTelInput({
            separateDialCode: true,
            nationalMode: true,
            preferredCountries: ["us"],
            autoPlaceholder: "polite",
            placeholderNumberType: "MOBILE",
            formatOnDisplay: false,
            utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/13.0.4/js/utils.js"
        })
        .done(function()
        {
            var phone = $(this).intlTelInput("getNumber");
            if (phone)
            {
                $(this).intlTelInput("setNumber", phone);
            }
            else
            {
                $('#phone-error').addClass('error').html('Phone Not Found!').css("font-weight", "bold");
            }
        });

        var countryData = $("#phone").intlTelInput("getSelectedCountryData");
        $('#user_defaultCountry').val(countryData.iso2);
        $('#user_carrierCode').val(countryData.dialCode);

        $("#phone").on("countrychange", function(e, countryData)
        {
            // log(countryData);
            $('#user_defaultCountry').val(countryData.iso2);
            $('#user_carrierCode').val(countryData.dialCode);

            if ($.trim($(this).val()) !== '')
            {
                if (!$(this).intlTelInput("isValidNumber"))
                {
                    // alert('invalid');
                    $('#tel-error').addClass('error').html('Please enter a valid International Phone Number.').css("font-weight", "bold");
                    $('#users_edit').prop('disabled',true);
                    $('#phone-error').hide();
                }
                else
                {
                    $('#tel-error').html('');

                    var id = $('#id').val();
                    $.ajax({
                        headers:
                        {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        method: "POST",
                        url: SITE_URL+"/admin/duplicate-phone-number-check",
                        dataType: "json",
                        cache: false,
                        data: {
                            'phone': $.trim($(this).val()),
                            'carrierCode': $.trim(countryData.dialCode),
                            'id': id,
                        }
                    })
                    .done(function(response)
                    {
                        if (response.status == true)
                        {
                            $('#tel-error').html('');
                            $('#phone-error').show();

                            $('#phone-error').addClass('error').html(response.fail).css("font-weight", "bold");
                            $('#users_edit').prop('disabled',true);
                        }
                        else if (response.status == false)
                        {
                            $('#tel-error').show();
                            $('#phone-error').html('');

                            $('#users_edit').prop('disabled',false);
                        }
                    });
                }
            }
            else
            {
                $('#tel-error').html('');
                $('#phone-error').html('');
                $('#users_edit').prop('disabled',false);
            }
        });

    });

     //Invalid Number Validation - admin edit
    $(document).ready(function()
    {
        $("input[name=phone]").on('blur', function(e)
        {
            if ($.trim($(this).val()) !== '')
            {
                if (!$(this).intlTelInput("isValidNumber"))
                {
                    // alert('invalid');
                    $('#tel-error').addClass('error').html('Please enter a valid International Phone Number.').css("font-weight", "bold");
                    $('#users_edit').prop('disabled',true);
                    $('#phone-error').hide();
                }
                else
                {
                    $('#tel-error').html('');
                    $('#phone-error').show();
                    $('#users_edit').prop('disabled',false);
                }
            }
            else
            {
                $('#tel-error').html('');
                $('#phone-error').html('');
                $('#users_edit').prop('disabled',false);
            }
        });
    });

     // Validate phone via Ajax
    $(document).ready(function()
    {
        $("input[name=phone]").on('input', function(e)
        {
            var id = $('#id').val();

            var phone = $(this).val().replace(/-|\s/g,""); //replaces 'whitespaces', 'hyphens'
            var phone = $(this).val().replace(/^0+/,"");  //replaces (leading zero - for BD phone number)

            var pluginCarrierCode = $(this).intlTelInput('getSelectedCountryData').dialCode;
            $.ajax({
                headers:
                {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: SITE_URL+"/admin/duplicate-phone-number-check",
                dataType: "json",
                data: {
                    'id': id,
                    'phone': $.trim(phone),
                    'carrierCode': $.trim(pluginCarrierCode),
                }
            })
            .done(function(response)
            {
                // console.log(phone.length);
                if (response.status == true)
                {
                    // alert('ss');
                    if(phone.length == 0)
                    {
                        $('#phone-error').html('');
                    }
                    else{
                        $('#phone-error').addClass('error').html(response.fail).css("font-weight", "bold");
                        $('form').find("button[type='submit']").prop('disabled',true);
                    }
                }
                else if (response.status == false)
                {
                    $('form').find("button[type='submit']").prop('disabled',false);
                    $('#phone-error').html('');
                }
            });
        });
    });
/*
intlTelInput
 */

    // Validate email via Ajax
    $(document).ready(function()
    {
        $("#email").on('input', function(e)
        {
            var email = $(this).val();
            var id = $('#id').val();
            $.ajax({
                headers:
                {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: SITE_URL+"/admin/email_check",
                dataType: "json",
                data: {
                    'email': email,
                    'user_id': id,
                }
            })
            .done(function(response)
            {
                // console.log(response);
                if (response.status == true)
                {
                    emptyEmail();
                    if (validateEmail(email))
                    {
                        $('#email-error').addClass('error').html(response.fail).css("font-weight", "bold");
                        $('#email-ok').html('');
                        $('form').find("button[type='submit']").prop('disabled',true);
                    } else {
                        $('#email-error').html('');
                    }
                }
                else if (response.status == false)
                {
                    $('form').find("button[type='submit']").prop('disabled',false);
                    emptyEmail();
                    if (validateEmail(email))
                    {
                        $('#email-error').html('');
                    } else {
                        $('#email-ok').html('');
                    }
                }

                /**
                 * [validateEmail description]
                 * @param  {null} email [regular expression for email pattern]
                 * @return {null}
                 */
                function validateEmail(email) {
                  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                  return re.test(email);
                }

                /**
                 * [checks whether email value is empty or not]
                 * @return {void}
                 */
                function emptyEmail() {
                    if( email.length === 0 )
                    {
                        $('#email-error').html('');
                        $('#email-ok').html('');
                    }
                }
            });
        });
    });
</script>
@endpush
