@extends('user_dashboard.layouts.app')

@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-xs-12 mb20 marginTopPlus">
                    @include('user_dashboard.layouts.common.alert')
                    <div class="card">
                        <div class="card-header">
                            <h4 class="float-left trans-inline">
                                @lang('message.dashboard.exchange.left-top.title')
                            </h4>
                        </div>
                        <div class="wap-wed mt20 mb20">
                            <div>
                                <form accept-charset="utf-8" action="{{ url('exchange-of-money') }}" id="exchange1_form" method="post">
                                    <input id="token" name="_token" type="hidden" value="{{csrf_token()}}">
                                    <input class="form-control percentage_fee" name="percentage_fee" type="hidden" value="">
                                    <input class="form-control fixed_fee" name="fixed_fee" type="hidden" value="">
                                    <input class="total_fees" name="fee" type="hidden" value="0.00">
                                    <input class="finalAmount" name="finalAmount" type="hidden">
                                    <input id="sessionFromWalletCode" name="sessionFromWalletCode" type="hidden">
                                    <input id="sessionToWalletCode" name="sessionToWalletCode" type="hidden">

                                    <!-- From Wallet-->
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <label id="wallet-label">
                                                @lang('message.dashboard.exchange.left-top.from-wallet')
                                                <span id="top-balance" style="display: none;">
                                                    (
                                                    <b>
                                                        @lang('message.dashboard.exchange.left-top.balance'):
                                                        <span class="show-wallet-balance text-success">
                                                        </span>
                                                        <span class="show-wallet">
                                                        </span>
                                                    </b>
                                                    )
                                                </span>
                                            </label>
                                            <select class="form-control user-wallet" id="user-wallet" name="from_currency_id">
                                                <option value="">
                                                    @lang('message.dashboard.exchange.left-top.select-wallet')
                                                </option>
                                                @foreach($activeHasTransactionUserCurrencyList as $result)
                                                <option value="{{$result['id']}}">
                                                    {{ $result['code'] }}
                                                </option>
                                                @endforeach
                                            </select>
                                            <small class="form-text text-muted" id="walletlHelp" style="display: none;">
                                                @lang('message.dashboard.deposit.fee')(
                                                <span class="pFees">
                                                    0
                                                </span>
                                                %+
                                                <span class="fFees">
                                                    0
                                                </span>
                                                ),
                                                @lang('message.dashboard.deposit.total-fee')
                                                <span class="total_fees">
                                                    0.00
                                                </span>
                                            </small>
                                        </div>
                                    </div>

                                    <!-- To Wallet-->
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <label id="wallet-label">
                                                @lang('message.dashboard.exchange.left-top.to-wallet')
                                                <span id="bottom-balance" style="display: none;">
                                                    (
                                                    <b>
                                                        @lang('message.dashboard.exchange.left-top.balance'):
                                                        <span class="toWalletBalance text-success">
                                                        </span>
                                                        <span class="to-wallet">
                                                        </span>
                                                    </b>
                                                    )
                                                </span>
                                            </label>
                                            <select class="form-control wallet" id="active-currencies" name="currency_id">
                                                <option value="">
                                                    @lang('message.dashboard.exchange.left-top.select-wallet')
                                                </option>
                                            </select>
                                        </div>
                                    </div>

                                    <!-- Give Amount-->
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <label>
                                                @lang('message.dashboard.exchange.left-top.give-amount')
                                            </label>
                                            <input class="form-control amount1" id="amounts" name="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="0.00" type="text" value="{{isset($transInfo['amount'])?$transInfo['amount']:''}}">
                                            <span class="amountLimit1" style="color: red;font-weight: bold">
                                            </span>
                                            @if($errors->has('amount'))
                                            <span class="help-block">
                                                <strong class="text-danger">
                                                    {{ $errors->first('amount') }}
                                                </strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>

                                    <!-- Exchange Rate-->
                                    <div class="form-group div_exchange_rate" style="display: none;text-align: center;">
                                        <div class="col-md-8">
                                            <span class="exchange_rate">
                                            </span>
                                        </div>
                                    </div>

                                    <!-- Get Amount-->
                                    <div class="form-group div_get_amount" style="display: none;text-align: center;">
                                        <div class="col-md-8">
                                            <label>
                                                @lang('message.dashboard.exchange.left-top.get-amount')
                                            </label>
                                            <p class="form-control-static getAmount" style="font-weight: bold;font-size: 26px !important;text-align: center;">
                                                <b>
                                                </b>
                                            </p>
                                            <span class="getAmountError" style="color: red;font-weight: bold">
                                            </span>
                                        </div>
                                    </div>

                                    <!--Submit-->
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <div class="buttonPadding pull-right" style="margin-bottom: 10px;margin-top:-25px">
                                                <button class="btn btn-cust" id="exchange1_money" type="submit">
                                                    <i class="spinner1 fa fa-spinner fa-spin" style="display: none;">
                                                    </i>
                                                    <span id="exchange1_text">
                                                        @lang('message.dashboard.button.exchange')
                                                    </span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('js')

<script src="{{asset('public/user_dashboard/js/jquery.validate.min.js')}}" type="text/javascript"></script>
<script src="{{asset('public/user_dashboard/js/additional-methods.min.js')}}" type="text/javascript"></script>

<script type="text/javascript">

    jQuery.extend(jQuery.validator.messages, {
        required: "{{__('This field is required.')}}",
    })

    $('#exchange1_form').validate({
        rules: {
            amount: {
                required: true,
            },
            from_currency_id: {
                required: true,
            },

            currency_id: {
                required: true,
            },
        },
        submitHandler: function (form) {
            $("#exchange1_money").attr("disabled", true);
            $(".spinner").show();
            var pretext=$("#exchange1_text").text();
            $("#exchange1_text").text('Exchange..');
            form.submit();
            setTimeout(function(){
                $("#exchange1_text").text(pretext);
                $("#exchange1_money").removeAttr("disabled");
                $(".spinner").hide();
            },1000);
        }
    });

    $(document).ready(function()
    {
        //on load
        $(window).on('load', function (e)
        {
            var fromToken = $("#token").val();
            var fromCurrency = $('.user-wallet').val();;

            var top_balance = $('#top-balance');
            var showWalletBalance = $('.show-wallet-balance');
            var showWallet = $('.show-wallet');

            getCurrenciesExceptUsersExistingWallets(fromCurrency);
            getBalanceOfBothFromAndToWallets(fromToken, fromCurrency, top_balance, showWalletBalance, showWallet);

            var towallet = localStorage.getItem('toWalletValueForSession');
            // console.log(towallet);

            var bottom_balance = $('#bottom-balance');
            var toWalletBalance = $('.toWalletBalance');
            var toWallet = $('.to-wallet');

            var previousUrl = localStorage.getItem("previousUrl");
            // console.log(previousUrl);

            var confirmationUrl    = SITE_URL+'/exchange-of-money';
            // console.log(confirmationUrl);
            if(confirmationUrl == previousUrl)
            {
                // log('showing');
                if (towallet)
                {
                    setTimeout(function(wallet,fromToken,bottom_balance, toWalletBalance, toWallet)
                    {
                        $('.wallet').val(wallet);
                        $('#amounts').trigger('input');
                        getAmountFromGive();
                        getBalanceOfBothFromAndToWallets(fromToken, wallet, bottom_balance, toWalletBalance, toWallet);
                    },2000,towallet, fromToken, bottom_balance, toWalletBalance, toWallet);
                    localStorage.removeItem('previousUrl');
                }
            }
            else
            {
                // log('removing');
                setTimeout(function() {
                    localStorage.removeItem('toWalletValueForSession');
                }, 2000);
            }

            ifAmountEmptyHideFeesElseShow();
            hideExchangeRateGetAmountDiv();
            checkAmountLimitAndFeesLimit();
        });
    });


    //From Wallet
    $(document).on('change', '.user-wallet', function (e)
    {
        ifAmountEmptyHideFeesElseShow();
        hideExchangeRateGetAmountDiv();
        checkAmountLimitAndFeesLimit();

        var fromToken = $("#token").val();
        var fromCurrency = $(this).val();
        getCurrenciesExceptUsersExistingWallets(fromCurrency);

        var top_balance = $('#top-balance');
        var showWalletBalance = $('.show-wallet-balance');
        var showWallet = $('.show-wallet');
        getBalanceOfBothFromAndToWallets(fromToken, fromCurrency, top_balance, showWalletBalance, showWallet);
    });


    //To Wallet
    $(document).on('change', '.wallet', function (e)
    {
        hideExchangeRateGetAmountDiv();

        var toToken = $("#token").val();
        var toCurrency = $(this).val();
        var bottom_balance = $('#bottom-balance');
        var toWalletBalance = $('.toWalletBalance');
        var toWallet = $('.to-wallet');
        getBalanceOfBothFromAndToWallets(toToken, toCurrency, bottom_balance, toWalletBalance, toWallet);
        getAmountFromGive();
    });


    //Amount
    $(document).on('input', '.amount1', function (e) {
        checkAmountLimitAndFeesLimit();
        ifAmountEmptyHideFeesElseShow();
        getAmountFromGive();
    });


    function checkAmountLimitAndFeesLimit()
    {
        var token = $("#token").val();
        var amount = $('.amount1').val();
        var currency_id = $('.user-wallet').val();
        $.ajax({
            method: "POST",
            url: SITE_URL + "/exchange/amount-limit-check",
            dataType: "json",
            data: {
                "_token": token,
                'amount': amount,
                'currency_id': currency_id,
                'transaction_type_id':'{{Exchange_From}}'
            }
        })
        .done(function (response)
        {
            if (response.success.status == 200)
            {
                $(".percentage_fee").val(response.success.feesPercentage);
                $(".fixed_fee").val(response.success.feesFixed);

                $(".total_fees").val(response.success.totalFees);
                $('.total_fees').html(response.success.totalFeesHtml);

                $('.pFees').html(response.success.pFees);
                $('.fFees').html(response.success.fFees);

                //checking wallet balance
                if(response.success.totalAmount > response.success.balance)
                {
                    $('.amountLimit1').html("{{__("Not have enough balance !")}}");
                    $('#exchange1_money').attr('disabled', true);
                }
                else
                {
                    $('.amountLimit1').html('');
                    $('#exchange1_money').removeAttr('disabled');
                }
            }
            else
            {
                if (amount == '')
                {
                    $('.amountLimit1').text('');
                }
                else
                {
                    $('.amountLimit1').text(response.success.message);
                    $('.text-danger').text('');
                }
                $('#exchange1_money').attr('disabled', true);
                return false;
            }
        });
    }


    function ifAmountEmptyHideFeesElseShow()
    {
        var amount = $('.amount1').val();
        var fromWallet = $('.user-wallet').val();
        var toWallet = $('.wallet').val();
        if( (amount.length === 0 && fromWallet == '' && toWallet == '') || (fromWallet == '' && toWallet == ''))
        {
            $('#walletlHelp').hide();
        }
        else
        {
            $('#walletlHelp').show();
        }
    }


    function getCurrenciesExceptUsersExistingWallets(fromWallet)
    {
        var token = $("#token").val();
        var currency_id = fromWallet;

        $('#bottom-balance').hide();

        $.ajax({
            method: "POST",
            url: SITE_URL + "/exchange/get-currencies-except-users-existing-wallets",
            dataType: "json",
            cache: false,
            data: {
                "_token": token,
                'currency_id': currency_id,
            }
        })
        .done(function (response)
        {
            var options = '';
            options += `<option value="">{{__("Select Wallet")}}</option>`;
            $.each(response.currencies, function(key, value)
            {
                options += `<option value="${value.id}" data-exchangeRate="${value.rate}" data-toWalletCode="${value.code}">${value.code}</option>`;
            });
            $('.wallet').html(options);
        });
    }


    function getBalanceOfBothFromAndToWallets(getToken, getFromOrToCurrencyId, getTopOrBottomBalance, getFromOrToWalletBalance, getFromOrToWallet)
    {
        $.ajax({
            method: "POST",
            url: SITE_URL + "/exchange/getBalanceOfToWallet",
            dataType: "json",
            data: {
                "_token": getToken,
                'currency_id': getFromOrToCurrencyId,
            }
        })
        .done(function (response)
        {
            if (response.status == true)
            {
                if (getFromOrToCurrencyId !== '')
                {
                    getTopOrBottomBalance.show();
                    getFromOrToWalletBalance.html(response.balance);
                    getFromOrToWallet.html(response.currencyCode);
                }
                else
                {
                    getTopOrBottomBalance.hide();
                }
            }
            else
            {
                getTopOrBottomBalance.hide();
            }
        });
    }


    function getAmountFromGive()
    {
        var amount = $('.amount1').val();
        var fromWallet = $('.user-wallet').val();
        var toWallet = $('.wallet').val();

        var fromWalletCode = $('.user-wallet').find(':selected').text();
        var toWalletExchangeRate = $('.wallet').find(':selected').attr('data-exchangeRate');
        var toWalletCode = $('.wallet').find(':selected').text();

        var toWalletValueForSession = $('.wallet').find(':selected').val();
        var fromWalletValueForSession = $('.user-wallet').find(':selected').val();

        if((amount > 0 || amount != '')  && fromWallet != '' && toWallet != '')
        {
            $('.div_exchange_rate').show();
            $('.exchange_rate').html(`<b> {{__("Exchange rate")}}: </b>` + `1 ${fromWalletCode} = ` + parseFloat(Math.round((toWalletExchangeRate) * 100) / 100).toFixed(3) + ` ${toWalletCode}`);
            $('.div_get_amount').show();
            $('.getAmount').html(parseFloat(Math.round((amount*toWalletExchangeRate) * 100) / 100).toFixed(2) + '&nbsp;' + toWalletCode);
            $('.finalAmount').val(amount*toWalletExchangeRate);

            //setting to wallet value to local storage for window load
            localStorage.setItem('toWalletValueForSession',toWalletValueForSession);
        }
        else
        {
            hideExchangeRateGetAmountDiv();
        }
    }


    function hideExchangeRateGetAmountDiv()
    {
        $('.div_exchange_rate').hide();
        $('.div_get_amount').hide();
        $('.exchange_rate').html('');
    }

</script>
@endsection
