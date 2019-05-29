<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Paymoney Payment</title>

    @include('user_dashboard.layouts.common.style')
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3 marginTopPlus">
            <h3 style="margin-bottom:15px;">{{$transInfo->app->merchant->user->first_name}} {{$transInfo->app->merchant->user->last_name}}'s {{$transInfo->app->merchant->business_name}} </h3>
            <div class="card">
                <div class="card-header">
                    <h4>Pay with PayMoney</h4>
                </div>
                <div class="wap-wed mt20 mb20">
                    <p class="mb20"><strong>You are about to make payment via&nbsp;PayMoney&nbsp;<strong>
                            </strong></strong></p>

                    <div class="h5"><strong>Details</strong></div>
                    <div class="row mt20">
                        <div class="col-md-6">Amount</div>
                        <div class="col-md-6 text-right"><strong>{{$transInfo->currency}} {{$transInfo->amount}}</strong></div>
                    </div>
                    <div class="row mt10">
                        <div class="col-md-6">Fee</div>
                        <div class="col-md-6 text-right"><strong>0.00</strong></div>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-6 h6"><strong>Total</strong></div>
                        <div class="col-md-6 text-right"><strong>{{$transInfo->currency}} {{$transInfo->amount}}</strong></div>
                    </div>

                </div>

                <div class="card-footer">
                    <div style="float: left;">
                        <form action="{{url('merchant/payment/cancel')}}" method="get">
                        <button class="btn btn-cust">
                            <strong><i class="fa fa-angle-left"></i>&nbsp;&nbsp;Cancel</strong>
                        </button>
                        </form>
                    </div>

                    <div style="float: right;">
                        <form action="{{url('merchant/payment/confirm')}}" method="get">
                        <button type="submit" class="btn btn-cust">
                            <strong>Confirm &nbsp; <i class="fa fa-angle-right"></i></strong>
                        </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>