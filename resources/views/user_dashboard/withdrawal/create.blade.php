@extends('user_dashboard.layouts.app')
@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-xs-12 mb20 marginTopPlus">
                    @include('user_dashboard.layouts.common.alert')

                    <form action="{{ url('payout') }}" style="display: block;" method="POST"
                          accept-charset='UTF-8' id="payout_form">
                        <input type="hidden" name="_token" id="_token" value="{{csrf_token()}}">

                        <div class="card">
                            <div class="card-header">
                                <div class="chart-list float-left">
                                    <ul>
                                        <h3>@lang('message.dashboard.payout.new-payout.title')</h3>
                                    </ul>
                                </div>
                            </div>
                            <div class="wap-wed mt20 mb20">
                                {{-- <h3 class="ash-font">@lang('message.dashboard.payout.new-payout.title')</h3>
                                <hr> --}}
                                <input type="hidden" value="" name="wallet_id" id="wallet_id">

                                @php
                                    $available_balance = available_balance();
                                @endphp

                                <input type="hidden" id="maxAmount" value="{{$available_balance}}">

                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label>@lang('message.dashboard.payout.new-payout.payment-method')</label>
                                            <select class="form-control" name="payout_setting_id" id="method">
                                                <option value="">@lang('message.dashboard.button.select-one')</option>

                                                @foreach ($payment_methods as $method)
                                                    @if($method->type =='3')
                                                        <option data-obj="{{json_encode($method->getAttributes())}}" value="{{ $method->id }}">{{$method->paymentMethod->name}} ({{ $method->email }})</option>
                                                    @elseif($method->type == '6')
                                                        <option data-obj="{{json_encode($method->getAttributes())}}" value="{{ $method->id }}">{{$method->paymentMethod->name}} ({{ $method->account_name }})</option>   
                                                    @else
                                                        <option data-obj="{{json_encode($method->getAttributes())}}" value="{{ $method->id }}">{{$method->paymentMethod->name}} ({{ $method->account_number }})</option> 
                                                    @endif

                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-5">

                                        <div class="form-group">
                                            <label>@lang('message.dashboard.payout.new-payout.currency')</label>

                                            <select class="form-control" name="currency_id" id="currency_id">
                                                <option value="">@lang('message.dashboard.button.select-one')</option>
                                                @foreach ($wallets as $row)
                                                    <option data-wallet="{{$row->id}}" value="{{ $row->currency->id }}">{{ $row->currency->code }}</option>
                                                @endforeach
                                            </select>

                                            <small id="walletHelp" class="form-text text-muted">
                                                @lang('message.dashboard.deposit.fee') (<span class="pFees">0</span>%+<span class="fFees">0</span>)
                                                @lang('message.dashboard.deposit.total-fee') <span class="total_fees">0.00</span>
                                            </small>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>@lang('message.dashboard.payout.new-payout.amount')</label>
                                    <input class="form-control" name="amount" id="amount"
                                           onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')"
                                           placeholder="0.00" type="text" value="">

                                    <span class="amountLimit" id="amountLimit" style="color: red;font-weight: bold"></span>
                                </div>

                                <div class="form-group" id="bank" style="display: none;">
                                    <label>@lang('message.dashboard.payout.new-payout.bank-info')</label>
                                    <span id="bank_info_input"></span>
                                </div>
                            </div>

                            <div class="card-footer">
                                <button type="submit" class="btn btn-cust col-12" id="send_money">
                                    <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span
                                            id="send_text">@lang('message.dashboard.button.submit')</span>
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

<script>
    $("#method").on('change', function ()
    {
        var obj=JSON.parse($('option:selected',this).attr('data-obj'));
        $("#bank").css("display", "none");

        if(obj.email!=null)
        {
            var p = '<input value="' + obj.email + '" type="text" name="payment_method_info" class="form-control" id="payment_method_info">';
        }
        else if(obj.account_name!=null)
        {
            var p = '<input value="' + obj.account_name + '" type="text" name="payment_method_info" class="form-control" id="payment_method_info">';
        }
         else if(obj.account_number!=null)
        {
            var p = '<input value="' + obj.account_number + '" type="text" name="payment_method_info" class="form-control" id="payment_method_info">';
        }
        $('#bank_info_input').html(p);
    });

    jQuery.extend(jQuery.validator.messages, {
      required: "{{__('This field is required.')}}",
    })


    $('#payout_form').validate({
        rules: {
            amount: {
                required: true
            },
            currency_id: {
                required: true
            },
            payout_setting_id:{
                required:true
            }
        },
        submitHandler: function (form) {
            $("#send_money").attr("disabled", true);
            $(".spinner").show();
            var pretext=$("#send_text").text();
            $("#send_text").text('Submitting...');
            form.submit();
            setTimeout(function(){
                $("#send_money").removeAttr("disabled");
                $(".spinner").hide();
                $("#send_text").text(pretext);
            },1000);
        }
    });

    $('#currency_id, #amount').on('change keyup', function (e)
    {
        var wallet_id = $('#currency_id option:selected').attr('data-wallet');
        if (wallet_id)
        {
            $('#wallet_id').val(wallet_id);
            var token = $('#_token').val();
            var amount = $('#amount').val();
            var currency_id = $('#currency_id').val();

            $.ajax({
                method: 'post',
                url: SITE_URL + "/withdrawal/amount-limit",
                data: {
                    "_token": token,
                    'amount': amount,
                    'wallet_id': wallet_id,
                    'currency_id': currency_id,
                    'transaction_type_id': '{{Withdrawal}}'
                },
                success: function (res)
                {
                    if (res.success.status == 200)
                    {
                        $('.total_fees').html(res.success.totalHtml);
                        $('.pFees').html(res.success.pFees);
                        $('.fFees').html(res.success.fFees);

                        //checking balance
                        if(res.success.totalAmount > res.success.balance){
                            $('#amountLimit').html("{{__("Not have enough balance !")}}");
                            $('#send_money').attr('disabled', true);
                        }else {
                            $('#amountLimit').html('');
                            $('#send_money').removeAttr('disabled');
                        }
                    }
                    else
                    {
                        if (amount == '')
                        {
                            $('#amountLimit').text('');
                        }
                        else
                        {
                            $('#amountLimit').text(res.success.message);
                        }

                        $('#send_money').attr('disabled', true);
                        return false;
                    }
                     $('#amount').focus();
                }
            });
        }
    });
    //do not comment or remove any of this its important
    $('#amount').trigger('change');
    $('#method').trigger('change');
</script>

@endsection