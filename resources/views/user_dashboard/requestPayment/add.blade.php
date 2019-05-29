@extends('user_dashboard.layouts.app')

@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">

				<div class="col-md-7 col-xs-12 mb20 marginTopPlus">
					@include('user_dashboard.layouts.common.alert')

			<form method="POST" action="{{url('request')}}" id="requestpayment_create_form" accept-charset='UTF-8'>
                <div class="card">
                    <div class="card-header">
						 	<div class="chart-list float-left">
								<ul>
									@if(Common::has_permission(auth()->id(),'manage_transfer'))
                                        <li><a href="{{url('/moneytransfer')}}">@lang('message.dashboard.send-request.menu.send')</a>
                                        </li>
                                    @endif

                                    @if(Common::has_permission(auth()->id(),'manage_request_payment'))
                                        <li class="active">
                                            <a href="{{url('/request_payment/add')}}">@lang('message.dashboard.send-request.menu.request')</a>
                                        </li>
                                    @endif

                                    {{-- @if(Common::has_permission(auth()->id(),'manage_bank_transfer'))
                                        <li>
                                            <a href="{{url('/bank-transfer')}}">@lang('message.dashboard.send-request.send-to-bank.title')</a>
                                        </li>
                                    @endif --}}
								</ul>
						    </div>
                    </div>
                     <div class="wap-wed mt20 mb20">
					   <h3 class="ash-font">@lang('message.dashboard.send-request.request.title')</h3>
					   <hr>
							<input type="hidden" value="{{csrf_token()}}" name="_token" id="token">
							<input class="form-control" name="purpose" id="purpose" type="hidden" value="no purpose">

						  <div class="form-group">
							<label for="exampleInputEmail1">@lang('message.dashboard.send-request.common.recipient')</label>
							<input type="email" class="form-control email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="@lang('message.dashboard.send-request.common.enter-email')" value="{{isset($transInfo['email'])?$transInfo['email']:''}}" name="email" id="email">
							<span class="emailError" style="color: red;font-weight: bold"></span>
							<small id="emailHelp" class="form-text text-muted">@lang('message.dashboard.send-request.common.anyone-else')</small>

							@if($errors->has('email'))
							<span class="error">
								{{ $errors->first('email') }}
							</span>
							@endif

						  </div>
							<div class="row">
							<div class="col-md-8">
							<div class="form-group">
							<label for="exampleInputPassword1">@lang('message.dashboard.send-request.common.amount')</label>
							<input type="text" class="form-control" name="amount" placeholder="0.00" type="text" id="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" value="{{isset($transInfo['amount'])?$transInfo['amount']:''}}">

							@if($errors->has('amount'))
							<span class="error">
								{{ $errors->first('amount') }}
							</span>
							@endif

							</div>
							</div>
							<div class="col-md-4">
							<div class="form-group">
							<label for="exampleInputPassword1">@lang('message.dashboard.send-request.common.currency')</label>
								<select class="form-control" name="currency_id">
									{{-- @foreach($currencies as $result)
									<option value="{{$result->id}}"{{ $transInfo['currency_id'] == $result->id ? 'selected="selected"' : '' }}>{{$result->code}}</option>
									@endforeach --}}

									@foreach($currencyList as $result)
                                            <option value="{{$result['id']}}"{{ $transInfo['currency_id'] == $result['id']? 'selected="selected"' : '' }}>{{$result['code']}}</option>
                                    @endforeach
							    </select>
							</div>
							</div>
							</div>

						  <div class="form-group">
							<label>@lang('message.dashboard.send-request.common.note')</label>

			                    <textarea class="form-control" rows="5" placeholder="@lang('message.dashboard.send-request.common.enter-note')" name="note" id="note">{{isset($transInfo['note'])?$transInfo['note']:''}}</textarea>

							@if($errors->has('note'))
							<span class="error">
								{{ $errors->first('note') }}
							</span>
							@endif

						  </div>


					 </div>

                    <div class="card-footer">
								<button type="submit" class="btn btn-cust col-12" id="rp_money">
		                  			<i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="rp_text">@lang('message.dashboard.button.send-request')</span>
		                  		</button>

                    </div>
                </div>
                </form>
            </div>
                <!--/col-->
            </div>
            <!--/row-->
        </div>
    </section>
@endsection

@section('js')
<script src="{{asset('public/user_dashboard/js/jquery.validate.min.js')}}" type="text/javascript"></script>
<script src="{{asset('public/user_dashboard/js/additional-methods.min.js')}}" type="text/javascript"></script>

<script type="text/javascript">

jQuery.extend(jQuery.validator.messages, {
    required: "{{__('This field is required.')}}",
    email: "{{__("Please enter a valid email address.")}}",
    maxlength: $.validator.format( "{{__("Please enter no more than")}}"+" {0} "+"{{__("characters.")}}" ),
})

$('#requestpayment_create_form').validate({
	rules: {
		amount: {
			required: true,
		},
		email: {
			required: true,
			email: true,
		},
		note: {
			required: true,
			maxlength: 512,
		},
	},
	submitHandler: function(form)
    {
        $("#rp_money").attr("disabled", true);
        $(".spinner").show();
        $("#rp_text").text('Sending Request...');
        var pretxt=$("#rp_text").text();
        form.submit();
        setTimeout(function(){
            $("#rp_money").removeAttr("disabled");
            $(".spinner").hide();
            $("#rp_text").text(pretxt);
        },2000);
    }
});

//Code for Email validation
$(document).on('input',".email",function(e)
{
        var email = $('.email').val();
        var token = $('#token').val();
        $.ajax({
            /*headers:
            {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },*/
            method: "POST",
            url: SITE_URL+"/request_payment/requestPaymentEmailValidate",
            dataType: "json",
            data: {
                'email': email,
                 '_token':token
            }
        })
        .done(function(response)
        {
            console.log(response);
            if (response.status == 1)
            {
                if (validateEmail(email))
                {
                    $('.emailError').addClass('text-danger').html(response.fail).css({'font-size':'14px', 'font-weight':'Bold'});
                    $('form').find("button[type='submit']").prop('disabled',true);
                } else {
                    $('.emailError').removeClass('text-danger').html('');
                }
            } else {
            	$('.emailError').removeClass('text-danger').html('');
            	$('form').find("button[type='submit']").prop('disabled',false);
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
        });
});

</script>

@endsection