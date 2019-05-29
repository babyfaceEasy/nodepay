@extends('frontend.layouts.app')
@section('content')
    <!--Start Developer section-->
    <section class="section-06 sector-guides">
        <div class="container">
            <div class="mt30">
                <div class="express-list">
                    <ul>
                        <li><a class="active33" href="{{url('/developer?type=standard')}}">Standard</a></li>
                        <li><a href="{{url('/developer?type=express')}}">Express</a></li>
                    </ul>
                </div>
                <p>

                </p>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
    <!--End Section -->
    <!--Start Developer section-->
    <section class="section-06 sector-guides mt50 mb-5">
        <div class="container">
            <div class="h4 mt30 mb20 text-center">PayMoney Standard Payment Gateway
            </div>
            <hr/>
            {{--<div class="h5 mt20 ">Create payment using paymoney as payment method: </div>--}}

            <div class="guidepara-style mt30">
                <div class="guide-header">
                    <h3 class="guideTitle-color"><strong>Instructions</strong></h3>
                </div>

                <div>
                    <style>
                        ol li{
                            padding: 5px;
                        }
                    </style>
                    <ol style="list-style:inside;list-style-type: decimal">
                        <li>Go to <a href="{{url('merchants')}}">Merchant</a></li>
                        <li>Click on gear button (where type is ‘Standard’. If you do not find gear icon please wait until admin approve the merchant account.)</li>
                        <li>Fill the input field like Item name, Order number, Price etc</li>
                        <li>Click on “Generate” button</li>
                        <li>Click on “copy” (top right corner in red color)</li>
                        <li>Paste it to your html file or view where you want to show the PayNow button</li>
                    </ol>
                </div>

            </div>

        </div>
    </section>
    <!--End Section-->
@endsection
@section('js')
    <script>

    </script>
@endsection
