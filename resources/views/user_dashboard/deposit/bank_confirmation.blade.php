@extends('user_dashboard.layouts.app')
@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">
				<div class="col-md-7 col-xs-12 mb20 marginTopPlus">
                <div class="card">
					<div class="card-header">
					   <h4>@lang('message.dashboard.deposit.title')</h4>
                    </div>

                    <form action="{{ url('deposit/bank-payment') }}" style="display: block;" method="POST" accept-charset="UTF-8" id="bank_deposit_form" enctype="multipart/form-data">

                        <input value="{{csrf_token()}}" name="_token" id="token" type="hidden">
                        <input value="{{$transInfo['payment_method']}}" name="method" id="method" type="hidden">
                        <input value="{{$transInfo['totalAmount']}}" name="amount" id="amount" type="hidden">

                        <div class="wap-wed mt20 mb20">
                            <div>
                                <div class="form-group">
                                    <label for="bank" class="h6"><strong>Select Bank</strong></label>
                                    <select class="form-control bank" name="bank" id="bank">
                                        @foreach($banks as $bank)
                                          <option value="{{ $bank['id'] }}" {{ isset($bank['is_default']) && $bank['is_default'] == 'Yes' ? "selected" : "" }}>{{ $bank['bank_name'] }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="card">
                              <div class="card-body">

                                <div class="container">

                                    @if ($bank['account_name'])
                                    <div class="row">
                                        <div class="col-sm">
                                            <p class="form-control-static">Account Name</p>
                                        </div>
                                        <div class="col-sm">
                                            <p class="form-control-static" id="account_name">{{  $bank['account_name'] }}</p>
                                        </div>
                                    </div>
                                    @endif

                                    <br>

                                    @if ($bank['account_number'])
                                        <div class="row">
                                            <div class="col-sm">
                                              <p class="form-control-static">Account Number</p>
                                            </div>
                                            <div class="col-sm">
                                              <p class="form-control-static" id="account_number">{{  $bank['account_number'] }}</p>
                                            </div>
                                        </div>
                                    @endif

                                    <br>

                                    @if ($bank['bank_name'])
                                        <div class="row">
                                            <div class="col-sm">
                                              <p class="form-control-static">Bank Name</p>
                                            </div>
                                            <div class="col-sm">
                                              <p class="form-control-static" id="bank_name">{{  $bank['bank_name'] }}</p>
                                            </div>
                                        </div>
                                    @endif

                                </div>
                              </div>
                            </div>

                            <br>

                            <div id="attached_file">
                                <div class="form-group">
                                    <label for="bank" class="h6"><strong>Attached File</strong></label>
                                    <input type="file" name="attached_file" class="form-control input-file-field" data-rel="">
                                </div>
                            </div>

                            @if ($payMtd->name == 'Bank')
                                <p class="mb20">@lang('message.dashboard.deposit.deposit-via')&nbsp;&nbsp;<strong>
                                    <img src="{{asset("public/images/payment_gateway")}}/{{ strtolower($transInfo['payment_name']) }}" width="100" height="100"/></strong>
                                </p>
                            @endif


                            <div class="h5"><strong>@lang('message.dashboard.confirmation.details')</strong></div>

                            <div class="row mt20">
                                <div class="col-md-6">@lang('message.dashboard.deposit.deposit-amount')</div>
                                <div class="col-md-6 text-right"><strong>{{ $transInfo['currSymbol'] }} {{ isset($transInfo['amount']) ? formatNumber($transInfo['amount']) : 0.00 }}</strong></div>
                            </div>

                            <div class="row mt10">
                                <div class="col-md-6">@lang('message.dashboard.confirmation.fee')</div>
                                <div class="col-md-6 text-right"><strong>{{ $transInfo['currSymbol'] }} {{ isset($transInfo['fee']) ? formatNumber($transInfo['fee']) : 0.00 }}</strong></div>
                            </div>
                            <hr />

                            <div class="row">
                                <div class="col-md-6 h6"><strong>@lang('message.dashboard.confirmation.total')</strong></div>
                                <div class="col-md-6 text-right"><strong>{{ $transInfo['currSymbol'] }} {{ isset($transInfo['totalAmount']) ? formatNumber($transInfo['totalAmount']) : 0.00 }}</strong></div>
                            </div>
                        </div>

                        <div class="card-footer" style="margin-left: 0 auto;">
    					    <div style="float: left;">
    							  <a onclick="window.history.back();" href="#" class="btn btn-cust">
    							     <strong><i class="fa fa-angle-left"></i>&nbsp;&nbsp;@lang('message.dashboard.button.back')</strong>
    							  </a>
    						</div>
    					    <div style="float: right;">
								<button type="submit" class="btn btn-cust" id="send_money">
		                  			<i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="send_text">@lang('message.dashboard.button.confirm')&nbsp; <i class="fa fa-angle-right"></i></span>
		                  		</button>
                            </div>
                        </div>
					</form>
                </div>
            </div>
                <!--/col-->
            </div>
            <!--/row-->
        </div>
    </section>
@include('user_dashboard.layouts.common.help')
@endsection


@section('js')

<script src="{{asset('public/user_dashboard/js/jquery.validate.min.js')}}" type="text/javascript"></script>
<script src="{{asset('public/user_dashboard/js/additional-methods.min.js')}}" type="text/javascript"></script>
<script>

jQuery.extend(jQuery.validator.messages, {
    required: "{{__('This field is required.')}}",
})

$('#bank_deposit_form').validate({
    rules: {
        attached_file: {
            required: true,
            extension: "png|jpg|jpeg|gif|bmp|pdf",
        },
    },
    messages: {
      attached_file: {
        extension: "Please select (png, jpg, jpeg, gif, bmp or pdf) file!"
      },
    },
    submitHandler: function(form)
    {
        $("#send_money").attr("disabled", true);
        $(".spinner").show();
        var pretext=$("#send_text").text();
        $("#send_text").text('Sending...');
        form.submit();
        setTimeout(function(){
            $("#send_money").removeAttr("disabled");
            $(".spinner").hide();
            $("#send_text").text(pretext);
        },10000);
    }
});


$(document).ready(function()
{
    $("#bank").change(function()
    {
        var bank = $(this).val();
        if (bank)
        {
            $.ajax({
                headers:
                {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: SITE_URL+"/deposit/bank-payment/get-bank-detail",
                dataType: "json",
                cache: false,
                data: {
                    'bank': bank,
                }
            })
            .done(function(response)
            {
                log(response);
                if (response.status == true)
                {
                    $('#account_name').html(response.bank.account_name);
                    $('#account_number').html(response.bank.account_number);
                    $('#bank_name').html(response.bank.bank_name);
                }
                else
                {
                    $('#account_name').html('');
                    $('#account_number').html('');
                    $('#bank_name').html('');
                }
            });
        }
    });
});
</script>
@endsection