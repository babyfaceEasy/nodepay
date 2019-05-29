@extends('user_dashboard.layouts.app')
@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-xs-12 mb20 marginTopPlus">
                    @include('user_dashboard.layouts.common.alert')
                    <div class="card">
                        <div class="card-header">
                            <h4>@lang('message.dashboard.nav-menu.payout')</h4>
                        </div>
                        <div class="wap-wed mt20 mb20">
                            <p class="mb20"> 
                                @lang('message.dashboard.payout.new-payout.withdraw-via')&nbsp;&nbsp;<img src="{{asset("public/images/payment_gateway")}}/{{strtolower($transInfo['payout_setting']->paymentMethod->name)}}.jpg"/>
                            </p>

                            @if ( isset($transInfo['payout_setting']->paymentMethod) && $transInfo['payout_setting']->paymentMethod->name == 'Bank')
                                <p class="mb20"> @lang('message.dashboard.payout.payout-setting.modal.bank-account-holder-name')&nbsp;&nbsp;: <b>{{ $transInfo['payout_setting']->account_name }}</b></p>
                                <p class="mb20"> @lang('message.dashboard.payout.payout-setting.modal.account-number')&nbsp;&nbsp;: <b>{{ $transInfo['payout_setting']->account_number }}</b></p>
                                <p class="mb20"> @lang('message.dashboard.payout.payout-setting.modal.swift-code')&nbsp;&nbsp;: <b>{{ $transInfo['payout_setting']->swift_code }}</b></p>
                                <p class="mb20"> @lang('message.dashboard.payout.payout-setting.modal.bank-name')&nbsp;&nbsp;: <b>{{ $transInfo['payout_setting']->bank_name }}</b></p>
                            @endif


                            <div class="h5"><strong>@lang('message.dashboard.confirmation.details')</strong></div>
                            <div class="row mt20">
                                <div class="col-md-6">@lang('message.dashboard.left-table.withdrawal.withdrawan-amount')</div>
                                <div class="col-md-6 text-right"><strong>{{  moneyFormat($transInfo['currSymbol'], formatNumber($transInfo['amount'])) }}</strong></div>
                            </div>
                            <div class="row mt10">
                                <div class="col-md-6">@lang('message.dashboard.confirmation.fee')</div>
                                <div class="col-md-6 text-right"><strong>{{  moneyFormat($transInfo['currSymbol'], formatNumber($transInfo['fee'])) }}</strong></div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-6 h6"><strong>@lang('message.dashboard.confirmation.total')</strong></div>

                                <div class="col-md-6 text-right"><strong>{{  moneyFormat($transInfo['currSymbol'], formatNumber($transInfo['totalAmount'])) }}</strong></div>
                            </div>

                        </div>

                        <div class="card-footer">
                            <div style="float: left;">
                                <a onclick="window.history.back();" href="#" class="btn btn-cust">
                                    <strong><i class="fa fa-angle-left"></i>&nbsp;&nbsp;@lang('message.dashboard.button.back')</strong>
                                </a>
                            </div>
                            <div style="float: right;">
                                <a href="{{url('withdrawal/confirm-transaction')}}" class="btn btn-cust">
                                    <strong>@lang('message.dashboard.button.confirm') &nbsp; <i class="fa fa-angle-right"></i></strong>
                                </a>
                            </div>
                        </div>
                    </div>
                 </div>
                <!--/col-->
            </div>
            <!--/row-->
        </div>
    </section>

@endsection
@section('js')
    <script>
    </script>
@endsection