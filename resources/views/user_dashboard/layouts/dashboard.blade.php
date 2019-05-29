@extends('user_dashboard.layouts.app')
@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-xs-12 col-sm-12 mb20 marginTopPlus">
                    <div class="flash-container">
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h4 class="float-left trans-inline">@lang('message.dashboard.left-table.title')</h4>
                        </div>
                        <div>
                            <div class="table-responsive">
                                <table class="table recent_activity">
                                    <thead>
                                    <tr>
                                        <td></td>
                                        <td width="17%" class="text-left">
                                            <strong>@lang('message.dashboard.left-table.date')</strong></td>
                                        <td><strong>&nbsp;&nbsp;</strong></td>
                                        <td class="text-left">
                                            <strong>@lang('message.dashboard.left-table.description')</strong></td>
                                        <td class="text-left">
                                            <strong>@lang('message.dashboard.left-table.status')</strong></td>
                                        <td class="text-left">
                                            <strong>@lang('message.dashboard.left-table.currency')</strong></td>
                                        <td class="text-left">
                                            <strong>@lang('message.dashboard.left-table.amount')</strong></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @if($transactions->count()>0)
                                        @foreach($transactions as $key=>$transaction)
                                            <tr click="0" data-toggle="collapse" data-target="#collapseRow{{$key}}"
                                                aria-expanded="false" aria-controls="collapseRow{{$key}}"
                                                class="show_area" trans-id="{{$transaction->id}}" id="{{$key}}">
                                                <td class="text-center arrow-size">
                                                    <strong>
                                                        <i class="fa fa-arrow-circle-right text-blue"
                                                           id="icon_{{$key}}"></i>
                                                    </strong>

                                                </td>
                                                <td class="text-left date_td" width="17%">{{ dateFormat($transaction->created_at) }}</td>

                                                    @if(empty($transaction->merchant_id))

                                                        @if($transaction->end_user_id)

                                                            @if(!empty($transaction->end_user->picture))
                                                                <td class="text-left">
                                                                    <img src="{{url('public/user_dashboard/profile/thumb/'.$transaction->end_user->picture)}}" class="rounded-circle rounded-circle-custom-trans">
                                                                </td>
                                                            @else
                                                                <td class="text-left">
                                                                    <img src="{{url('public/user_dashboard/images/avatar.jpg')}}" class="rounded-circle rounded-circle-custom-trans">
                                                                </td>
                                                            @endif
                                                            <td class="text-left">
                                                                @if($transaction->transaction_type_id)
                                                                    @if($transaction->transaction_type_id==Request_From)
                                                                        <p>
                                                                            {{ $transaction->end_user->first_name.' '.$transaction->end_user->last_name }}
                                                                        </p>
                                                                        <p>@lang('Request Sent')</p>
                                                                    @elseif($transaction->transaction_type_id==Request_To)
                                                                        <p>
                                                                            {{ $transaction->end_user->first_name.' '.$transaction->end_user->last_name }}
                                                                        </p>
                                                                        <p>@lang('Request Received')</p>

                                                                    @elseif($transaction->transaction_type_id == Transferred)
                                                                        <p>
                                                                            {{ $transaction->end_user->first_name.' '.$transaction->end_user->last_name }}
                                                                        </p>
                                                                        <p>@lang('Transferred')</p>

                                                                    @elseif($transaction->transaction_type_id == Received)
                                                                        <p>
                                                                            {{ $transaction->end_user->first_name.' '.$transaction->end_user->last_name }}
                                                                        </p>
                                                                        <p>@lang('Received')</p>
                                                                    @else
                                                                        <p>{{ __(str_replace('_',' ',$transaction->transaction_type->name)) }}</p>
                                                                    @endif
                                                                @endif

                                                            </td>
                                                        @else

                                                            <?php
                                                                //$payment_method = isset($transaction->payment_method->name) ? $transaction->payment_method->name : '';
                                                                //$img = strtolower($payment_method) . '.jpg';
                                                            ?>

                                                           <?php
                                                                if (isset($transaction->payment_method->name))
                                                                {
                                                                    if ($transaction->payment_method->name == 'Mts')
                                                                    {
                                                                        //$payment_method = 'Pay Money';
                                                                        $payment_method = getCompanyName();
                                                                        $img            = strtolower($transaction->payment_method->name) . '.jpg';
                                                                    }
                                                                    else
                                                                    {
                                                                        $payment_method = $transaction->payment_method->name;
                                                                        $img            = strtolower($payment_method) . '.jpg';
                                                                    }
                                                                }
                                                            ?>

                                                            <td class="text-left">

                                                                @if($transaction->transaction_type->name == 'Deposit' || $transaction->transaction_type->name == 'Withdrawal')
                                                                    @if(!empty($payment_method))
                                                                        <img src='{{url("public/images/payment_gateway/thumb/$img")}}' class="rounded-circle rounded-circle-custom-trans">
                                                                    @endif

                                                                @elseif($transaction->transaction_type_id==Exchange_To || $transaction->transaction_type_id==Exchange_From)
                                                                    <img src='{{url("public/frontend/images/exchange.png")}}'
                                                                         class="rounded-circle rounded-circle-custom-trans">

                                                                @elseif($transaction->transaction_type_id == Request_From || $transaction->transaction_type_id==Transferred)
                                                                    <img src="{{url('public/images')}}/avatar.png" class="rounded-circle rounded-circle-custom-trans">

                                                                @elseif($transaction->transaction_type_id == Bank_Transfer)

                                                                    @if ($transaction->bank)
                                                                        <img src="{{url('public/images/payment_gateway/thumb/bank.jpg')}}" class="rounded-circle rounded-circle-custom-trans">
                                                                    @endif

                                                                @elseif($transaction->transaction_type_id==Voucher_Created || $transaction->transaction_type_id==Voucher_Activated)
                                                                    <img src='{{url("public/frontend/images/voucher.png")}}' class=" rounded-circle-custom-trans">
                                                                @endif
                                                            </td>
                                                            <td class="text-left">
                                                                <p>
                                                                    @if($transaction->transaction_type->name == 'Deposit' || $transaction->transaction_type->name == 'Withdrawal')
                                                                        @if(!empty($payment_method))
                                                                            {{ $payment_method }}
                                                                        @endif
                                                                    @endif
                                                                    @if( $transaction->transaction_type->name == 'Transferred' || $transaction->transaction_type->name == 'Request_From' && $transaction->user_type = 'unregistered')
                                                                        {{ $transaction->email }}
                                                                    @endif
                                                                </p>

                                                                @if($transaction->transaction_type_id)
                                                                    @if($transaction->transaction_type_id==Request_From)
                                                                        <p>@lang('Request Sent')</p>
                                                                    @elseif($transaction->transaction_type_id==Request_To)
                                                                        <p>@lang('Request Received')</p>

                                                                    @elseif($transaction->transaction_type_id == Bank_Transfer)
                                                                        <p>{{ $transaction->bank->account_name }}</p>
                                                                        <p>@lang('Bank Transfer')</p>

                                                                    @elseif($transaction->transaction_type_id == Withdrawal)
                                                                        <p>@lang('Payout')</p>
                                                                    @else
                                                                        <p>{{ __(str_replace('_',' ',$transaction->transaction_type->name)) }}</p>
                                                                    @endif
                                                                @endif

                                                            </td>
                                                        @endif
                                                    @else
                                                        <td class="text-left">
                                                            @if($transaction->merchant->logo)
                                                                <img src="{{url('public/user_dashboard/merchant/thumb').'/'.$transaction->merchant->logo}}"
                                                                     class="rounded-circle rounded-circle-custom-trans">
                                                            @else
                                                                <img src="{{url('public/uploads/merchant/merchant.jpg')}}"
                                                                     class="rounded-circle rounded-circle-custom-trans">
                                                            @endif
                                                        </td>
                                                        <td class="text-left">
                                                            <p>{{ $transaction->merchant->business_name }}</p>
                                                            @if($transaction->transaction_type_id)
                                                                <p>{{ __(str_replace('_',' ',$transaction->transaction_type->name)) }}</p>
                                                            @endif
                                                        </td>
                                                    @endif

                                                <td class="text-left">
                                                    <p id="status_{{$transaction->id}}">
                                                        {{
                                                            (
                                                                ($transaction->status == 'Blocked') ? __("Cancelled") :
                                                                (
                                                                    ($transaction->status == 'Refund') ? __("Refunded") : __($transaction->status)
                                                                )
                                                            )
                                                        }}
                                                    </p>
                                                </td>
                                                <td class="text-left"><p>{{ $transaction->currency->code }} </p></td>

                                                    @if($transaction->transaction_type_id == Deposit)
                                                        @if($transaction->total > 0)
                                                            <td class="text-left text-success"><p>+{{ formatNumber($transaction->subtotal) }}</p></td>
                                                        @endif
                                                    @else
                                                        @if($transaction->total > 0)
                                                            <td class="text-left text-success"><p>
                                                                    +{{ formatNumber($transaction->total) }}</p></td>
                                                        @elseif($transaction->total == 0)
                                                            <td class="text-left">
                                                                <p>{{ formatNumber($transaction->total) }}</p></td>
                                                        @elseif($transaction->total < 0)
                                                            <td class="text-left text-danger">
                                                                {{-- <p>-{{ formatNumber($transaction->total) }}</p></td> --}}
                                                                <p>{{ formatNumber($transaction->total) }}</p></td>
                                                        @endif
                                                    @endif

                                            </tr>
                                            <tr id="collapseRow{{$key}}" class="collapse">
                                                <td colspan="8" class="">
                                                    <div class="row activity-details" id="loader_{{$transaction->id}}"
                                                         style="min-height: 200px">

                                                        <div class="col-md-6 col-sm-12 text-left" id="html_{{$key}}">
                                                        </div>

                                                        <div class="col-md-3 col-sm-12">
                                                            <div class="right">
                                                                @if( $transaction->transaction_type_id == Payment_Sent && $transaction->status == 'Success' && !isset($transaction->dispute->id))
                                                                    <a id="dispute_{{$transaction->id}}" href="{{url('/dispute/add/').'/'.$transaction->id}}" class="btn btn-secondary btn-sm">@lang('message.dashboard.transaction.open-dispute')</a>
                                                                @endif
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-12">
                                                        </div>

                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="6"> @lang('message.dashboard.left-table.no-transaction')</td>
                                        </tr>
                                    @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="text-center ash-color"><a class="font-weight-bold"
                                        href="{{url('transactions')}}">@lang('message.dashboard.left-table.view-all')</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-xs-12 col-sm-12 mb20 marginTopPlus">
                    <div class="flash-container">
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h4 class="float-left trans-inline">@lang('message.dashboard.right-table.title')</h4>
                            <div class="chart-list trans-inline float-right ">
                            </div>
                        </div>
                        <div>
                            @if($wallets->count()>0)
                                @foreach($wallets as $wallet)
                                    <div class="set-Box clearfix">
                                        <ul>
                                            <li>
                                                @if(empty($wallet->currency->logo))
                                                    <img src="{{asset('public/user_dashboard/images/favicon.png')}}" class="img-responsive">
                                                @else
                                                    <img src='{{asset("public/uploads/currency_logos/".$wallet->currency->logo)}}' class="img-responsive">
                                                @endif

                                                <span class="trans-inline sb-title"> <p>{{ $wallet->currency->name }} </p></span>
                                            </li>
                                            <li class="text-right sb-title">
                                                <?php
                                                $balance = formatNumber($wallet->balance);
                                                ?>

                                                @if($wallet->balance>0)
                                                    <p class="text-success">
                                                        +{{ $balance.' '.$wallet->currency->code }}</p>
                                                @elseif($wallet->balance==0)
                                                    <p>{{ $balance.' '.$wallet->currency->code }}</p>
                                                @elseif( $wallet->balance <0 )
                                                    <p class="text-danger">
                                                        {{ $balance.' '.$wallet->currency->code }}</p>
                                                @endif
                                            </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    @else
                                        @lang('message.dashboard.right-table.no-wallet')
                                    @endif


                                    <div class="clearfix"></div>
                        </div>
                        <div class="card-footer">
                            <div class="dash-btn row">
                                @if(Common::has_permission(auth()->id(),'manage_deposit'))
                                    <div class="left col-md-6 pb6">
                                        <a href="{{url('deposit')}}" class="btn btn-cust col-md-12">
                                            <img src="{{asset('public/user_dashboard/images/deposit.png')}}"
                                                 class="img-responsive" style="margin-top:3px;">
                                            &nbsp;@lang('message.dashboard.button.deposit')
                                        </a>
                                    </div>
                                @endif
                                @if(Common::has_permission(auth()->id(),'manage_withdrawal'))
                                    <div class="right col-md-6">
                                        <a href="{{url('payouts')}}" class="btn btn-cust col-md-12 ">
                                            <img src="{{asset('public/user_dashboard/images/withdrawal.png')}}" class="img-responsive"> &nbsp;@lang('message.dashboard.button.payout')
                                        </a>
                                    </div>
                                @endif
                            </div>
                            <div class="clearfix"></div>
                            @if(Common::has_permission(auth()->id(),'manage_exchange'))
                                <div class="mt20 exhover text-center">
                                    <a href="{{url('exchange')}}" class="btn btn-cust"><i class="fa fa-money"></i> &nbsp; @lang('message.dashboard.button.exchange')
                                    </a>
                                </div>
                            @endif

                            {{-- @if(Common::has_permission(auth()->id(),'manage_bank_transfer'))
                                <div class="mt20 exhover text-center">
                                    <a href="{{url('bank-transfer')}}" class="btn btn-cust"><i class="fa fa-exchange"></i> &nbsp; @lang('message.dashboard.send-request.send-to-bank.title')
                                    </a>
                                </div>
                            @endif --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
@section('js')
    <script>


        $(".show_area").on('click', function () {

            var trans_id = $(this).attr('trans-id');

            var row_id = $(this).attr('id');

            var preRowId = (parseInt(row_id) - 1);
            $(this).addClass('leftBorderRow');
            $("#collapseRow" + row_id).css('border-left', '5px solid #0b2854');
            var result = $("#" + preRowId).hasClass('leftBorderRow');
            if (result == false) {
                $("#" + preRowId).css('border-left', '5px solid #FFFFFF');
            }

            $.ajax({
                method: "POST",
                url: SITE_URL + "/get_transaction",
                dataType: "json",
                data: {id: trans_id},
                beforeSend: function () {

                    $('#loader_' + trans_id).css({
                        'margin': '0px',
                        'background': "url('public/user_dashboard/images/loading.gif') center",
                        'background-repeat': 'no-repeat'
                    });
                },
                complete: function () {
                    $('#loader_' + trans_id).css({'margin': '0px', 'background': "", 'background-repeat': ''});
                },
                success: function (response) {

                    console.log(response.html);

                    $("#html_" + row_id).html(response.html);

                }
            });

            var totalClick = parseInt($(this).attr('click')) + 1;
            $(this).attr('click', totalClick);
            var nowClick = parseInt($(this).attr('click')) % 2;

            if (nowClick == 0) {
                $(this).removeClass('leftBorderRow');
                $("#collapseRow" + row_id).css('border-left', '5px solid #FFFFFF');
                $("#icon_" + row_id).removeClass("fa-arrow-circle-down").addClass("fa-arrow-circle-right");
            } else {
                $(this).addClass('leftBorderRow');
                $("#icon_" + row_id).removeClass('fa-arrow-circle-right').addClass("fa-arrow-circle-down");
            }

        });


        $(document).on('click', '.trxn', function ()
        {
            var trans_id = $(this).attr('data');
            var type = $(this).attr('data-type');
            //alert(trans_id);

            $.ajax({
                method: "POST",
                url: SITE_URL + "/request_payment/cancel",
                dataType: "json",
                data: {
                    id: trans_id,
                    type: type,
                },
                success: function (response)
                {
                    console.log(response);
                    $("#status_" + trans_id).text("{{__("Cancelled")}}");
                    $("#btn_" + trans_id).text("{{__("Cancelled")}}");
                    $('.trxn_accept').hide();
                }
            });
        });

        $(document).on('click', '.trxnreqfrom', function ()
        {
            var trans_id = $(this).attr('data');
            var type = $(this).attr('data-type');
            //alert(trans_id);

            $.ajax({
                method: "POST",
                url: SITE_URL + "/request_payment/cancelfrom",
                dataType: "json",
                data: {
                    id: trans_id,
                    type: type,
                },
                success: function (response)
                {
                    // console.log(response);
                    $("#status_" + trans_id).text("{{__("Cancelled")}}");
                    $("#btn_" + trans_id).text("{{__("Cancelled")}}");
                    $('.trxn_accept').hide();
                }
            });
        });

        $(document).on('click', '.trxn_accept', function () {
            window.location.replace(SITE_URL + "/request_payment/accept/" + ($(this).attr('data-rel')));
        });

    </script>
@endsection