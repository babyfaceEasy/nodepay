<?php
if (isset($transInfo))
{
    //echo "<pre>";print_r($transInfo);
}
?>
@extends('user_dashboard.layouts.app')

@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">

                <div class="col-md-7 col-xs-12 mb20 marginTopPlus">
                    @include('user_dashboard.layouts.common.alert')
                    <form id="depositForm1" action="{{ url('deposit') }}" method="post" accept-charset='UTF-8'>
                        <div class="card">
                            <div class="card-header">
                                <div class="chart-list float-left">
                                    <ul>
                                        <li class="">@lang('message.dashboard.deposit.title')</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="wap-wed mt20 mb20">
                                <input type="hidden" value="{{csrf_token()}}" name="_token" id="token">
                                <input type="hidden" name="percentage_fee" id="percentage_fee" class="form-control"
                                       value="">
                                <input type="hidden" name="fixed_fee" id="fixed_fee" class="form-control" value="">
                                <input type="hidden" name="fee" class="total_fees" value="0.00">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">@lang('message.dashboard.deposit.amount')</label>
                                                <input type="text" class="form-control amount" name="amount"
                                                       placeholder="0.00" type="text" id="amount"
                                                       onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')"
                                                       value="{{isset($transInfo['amount'])?$transInfo['amount']:''}}">
                                                <span class="amountLimit" style="color: red;font-weight: bold"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">@lang('message.dashboard.deposit.currency')</label>
                                                <select class="form-control wallet" name="currency_id">
                                                    @foreach ($activeCurrencyList as $aCurrency)
                                                        <option value="{{ $aCurrency['id'] }}"{{ $transInfo['wallet'] == $aCurrency['id'] ? 'selected="selected"' : '' }}>{{ $aCurrency['code'] }}</option>
                                                    @endforeach
                                                </select>
                                                <small id="walletlHelp" class="form-text text-muted">
                                                    @lang('message.dashboard.deposit.fee')(<span class="pFees">0</span>%+<span
                                                            class="fFees">0</span>)
                                                    @lang('message.dashboard.deposit.total-fee') <span class="total_fees">0.00</span>
                                                </small>
                                            </div>
                                        </div>
                                        <div class="col-md-12" id="paymentMethodEmpty">
                                            <div class="form-group">
                                                <label>@lang('message.dashboard.deposit.no-payment-method')</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12" id="paymentMethodSection">
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">@lang('message.dashboard.deposit.payment-method')</label>
                                                <select class="form-control payment_method" name="payment_method" id="payment_method">

                                                    @if($payment_met)
                                                        <?php
                                                        $i = 1;
                                                        ?>
                                                        @foreach($payment_met as $key=>$pm)
                                                            @if(!in_array($pm->id,[1,6]))
                                                                <option value="{{ $pm->id }}"{{ $transInfo['payment_method'] == $pm->id ? 'selected="selected"' : '' }}>{{ $pm->name }}</option>
                                                            @endif
                                                            <?php
                                                            $i++;
                                                            ?>
                                                        @endforeach
                                                    @endif
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="" style="margin-bottom: 10px">
                                    <button type="submit" class="btn btn-cust col-12 transfer_form" id="send_money">
                                        <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="send_text">@lang('message.dashboard.button.next')</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
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

    var shownnn = "yes";
    var dropd = document.getElementById("image-dropdown");

    function showww() {
        dropd.style.height = "auto";
        dropd.style.overflow = "y-scroll";
    }

    function hideee() {
        dropd.style.height = "30px";
        dropd.style.overflow = "hidden";
    }

    function myfuunc(imgParent) {
        hideee();
        var mainDIVV = document.getElementById("image-dropdown");
        imgParent.parentNode.removeChild(imgParent);
        mainDIVV.insertBefore(imgParent, mainDIVV.childNodes[0]);
    }

    // Code for Amount Limit  check on load
    $(window).on('load', function (e) {
        checkAmountLimitAndFeesLimit();
    });

    // Code for Amount Limit  check
    $(document).on('input', '.amount', function (e) {
        checkAmountLimitAndFeesLimit();
    });

    // Code for Fees Limit  check
    $(document).on('change', '.wallet', function (e) {
        checkAmountLimitAndFeesLimit();
    });

    function checkAmountLimitAndFeesLimit()
    {
        var token = $("#token").val();
        var amount = $('#amount').val();
        var currency_id = $('.wallet').val();

        $.ajax({
            method: "POST",
            url: SITE_URL + "/deposit/amount-limit",
            dataType: "json",
            data: {
                "_token": token,
                'amount': amount,
                'currency_id': currency_id,
                'transaction_type_id': '{{Deposit}}'
            }
        })
        .done(function (response)
        {
            console.log(response);

            let options = '';

            $.map(response.success.methods, function (value, index) {
                options += `<option value="${index}">${value}</option>`;
            });


            if (response.success.methods != '') {
                $('#payment_method').html(options);
                $('#paymentMethodSection').show();
                $('#paymentMethodEmpty').hide();
                $('#send_money').show();
            } else {
                $('#paymentMethodSection').hide();
                $('#paymentMethodEmpty').show();
                $('#send_money').hide();
            }
            if (response.success.status == 200) {
                $("#percentage_fee").val(response.success.feesPercentage);
                $("#fixed_fee").val(response.success.feesFixed);
                $(".percentage_fees").html(response.success.feesPercentage);
                $(".fixed_fees").html(response.success.feesFixed);
                $(".total_fees").val(response.success.totalFees);
                $('.total_fees').html(response.success.totalFeesHtml);
                $('.pFees').html(response.success.pFees);
                $('.fFees').html(response.success.fFees);
                $('.amountLimit').text('');

                return true;
            }
            else {
                if (amount == '') {
                    $('.amountLimit').text('');
                }
                else {
                    $('.amountLimit').text(response.success.message);
                    return false;
                }
            }
        });
    }

    $('#depositForm1').validate({
        rules: {
            payment_method: {
                required: true,
            },
            amount: {
                required: true,
            },
            wallet: {
                required: true,
            },
        },
        submitHandler: function (form) {
            $("#send_money").attr("disabled", true);
            $(".spinner").show();
            var pretext=$("#send_text").text();
            $("#send_text").text('Sending...');
            form.submit();
            setTimeout(function(){
                $("#send_text").text(pretext);
                $("#send_money").removeAttr("disabled");
                $(".spinner").hide();
            },1000);

        }
    });
</script>

<script>
    $(document).ready(function () {
        $('#serial_2').addClass('activeMethod');
        var method = $('#serial_2 img').attr('method');
        $('#seturl').attr('href', SITE_URL + '/deposit/method/' + method);
    });
    $('.paymentGateway img').bind('click', function () {
        $('.paymentGateway').css('background-color', '').removeClass('activeMethod');
        var id = $(this).attr('data-id');
        $('#serial_' + id).addClass('activeMethod').css('background-color', '#4974C9');
        var method = $(this).attr('method');
        $('#seturl').attr('href', SITE_URL + '/deposit/method/' + method);
    });
</script>
@endsection