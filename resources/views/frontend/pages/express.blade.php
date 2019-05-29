@extends('frontend.layouts.app')
@section('content')
    <!--Start Developer section-->
    <section class="section-06 sector-guides">
        <div class="container">
            <div class="mt30">
                <div class="express-list">
                    <ul>
                        <li><a href="{{url('/developer?type=standard')}}">Standard</a></li>
                        <li><a class="active33" href="{{url('/developer?type=express')}}">Express</a></li>
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
    <section class="section-06 sector-guides mt50">
        <div class="container">
            <div class="h4 mt30 mb20 text-center">PayMoney Express Payment Gateway Documentation
            </div>
            <hr/>
            {{--<div class="h5 mt20 ">Create payment using paymoney as payment method: </div>--}}

            <div class="guidepara-style mt30">
                <div class="guide-header">
                    <h3 class="guideTitle-color"><strong>Payer</strong></h3>
                </div>

                <p>If payer wants to fund payments using paymoney, set payer to paymoney.<br>
                    (Other payment method ex: paypal, stripe, coinpayments etc not available yet).
                </p>

            </div>

            <div class="guidepara-style mt30">
                <div class="guide-header">
                    <h3 class="guideTitle-color"><strong>Amount</strong></h3>
                </div>
                <p>Specify a payment amount and the currency.</p>
            </div>

            <div class="guidepara-style mt30">
                <div class="guide-header">
                    <h3 class="guideTitle-color"><strong>Transaction</strong></h3>
                </div>
                <p>It’s a Transaction resource where amount object has to set.</p>
            </div>

            <div class="guidepara-style mt30">
                <div class="guide-header">
                    <h3 class="guideTitle-color"><strong>RedirectUrls</strong></h3>
                </div>
                <p>Set the urls where buyer should redirect after transaction is completed or
                    cancelled. </p>
            </div>

            <div class="guidepara-style mt30">
                <div class="guide-header">
                    <h3 class="guideTitle-color"><strong>Payment</strong></h3>
                </div>
                <p>It’s a payment resource where all <strong>Payer, Amount, RedirectUrls and
                        Credentials of merchant</strong> (Client ID and Client Secret) have to set.
                    After initialized into <strong>Payment</strong> object, need to call create
                    method. It will generate a redirect URL. Users have to redirect into this URL to
                    complete the transaction.
                </p>
            </div>
            <br>


            <div class="mt30">
                <h3><strong>
                        <ins>Installation Instruction :</ins>
                    </strong></h3>
            </div>

            <div class="mt30">
                <div class="composer-box">Click download for the package <a href="{{url('download/package')}}" style="color:rgba(74, 111, 197, 0.9) !important">download</a></div>
            </div>
            <div class="guidepara-style mt30">
                <div class="guideBox-color">
                        <p>Go to <strong>php-sdk/src/PayMoney/Rest/Connection.php</strong> then change <strong>BASE_URL</strong> value to your hostname
                        <br>(ex: If localhost then <strong>define( 'BASE_URL' , 'http://localhost' )</strong> )</p>

                </div>
                </div>

            <div class="mt30">
                <div class="h4">Example :</div>
            </div>

            <div class="guideBox-color mt30">
<pre style="display:block;">
<span style="color:#cf1ffb;"> require</span> <span style="color:#55bb17;">'vendor/autoload.php'</span>;
<span style="color:#cf1ffb;"> use</span> PayMoney\Api\Payer;
<span style="color:#cf1ffb;"> use</span> PayMoney\Api\Amount;
<span style="color:#cf1ffb;"> use </span>PayMoney\Api\Transaction;
<span style="color:#cf1ffb;"> use</span> PayMoney\Api\RedirectUrls;
<span style="color:#cf1ffb;"> use</span> PayMoney\Api\Payment;

<span style="color:#fd8f00;"> $payer</span> =<span
            style="color:#cf1ffb;"> new</span> Payer();
<span style="color:#fd8f00;"> $payer</span>->setPaymentMethod(<span
            style="color:#55bb17;">'paymoney'</span>);

                                    <span style="color:#fd8f00;"> $amountIns</span> = <span
            style="color:#cf1ffb;">new</span> Amount();
                                    <span style="color:#fd8f00;"> $amountIns</span>->setTotal(20)
                                     ->setCurrency(<span style="color:#55bb17;">'USD'</span>); <span
            style="color:#707070;">//currency must be in merchant wallet list</span>

                                     $trans =<span style="color:#cf1ffb;"> new</span> Transaction();
                                     $trans->setAmount(<span style="color:#fd8f00;">$amountIns</span>);
                                            </pre>
            </div>

            <div class="guideBox-color mt30">
                                    <pre style="display:block;">
                                     <span style="color:#fd8f00;">$urls</span> = new RedirectUrls();
                                     <span style="color:#fd8f00;">$urls</span>->setReturnUrl(<span
                                                style="color:#55bb17;">'http://localhost/return-url'</span>)
                                     ->setCancelUrl(<span style="color:#55bb17;">'http://localhost/cancel-url'</span>);

                                     <span style="color:#fd8f00;">$payment</span> = new Payment();
                                     //Client ID & Secret = Merchants->setting(gear icon)
                                     <span style="color:#fd8f00;">$payment</span>->setCredentials([
                                     <span style="color:#55bb17;">'client_id'</span> => <span style="color:#55bb17;">'ID'</span>,
                                     <span style="color:#55bb17;">'client_secret'</span> => <span
                                                style="color:#55bb17;">'secret'</span>
                                     ])

                                     ->setRedirectUrls(<span style="color:#fd8f00;">$urls</span>)
                                     ->setPayer(<span style="color:#fd8f00;">$payer</span>)
                                     ->setTransaction(<span style="color:#fd8f00;">$trans</span>);

                                     <span style="color:#cf1ffb;">try</span> {
                                     <span style="color:#fd8f00;">$payment</span>->create();
                                     // redirecting to the approved url
                                     header(<span style="color:#55bb17;">"Location: "</span>.<span
                                                style="color:#fd8f00;">$payment</span>->getApprovedUrl());
                                     } <span style="color:#cf1ffb;">catch</span> (\Exception <span
                                                style="color:#fd8f00;">$ex</span>) {
                                    <span style="color:#cf1ffb;"> print</span> <span style="color:#fd8f00;">$ex</span>;
                                    <span style="color:#cf1ffb;"> exit;</span>
                                     }
                                            </pre>
            </div>

        </div>
    </section>
    <!--End Section-->
@endsection
@section('js')
    <script>

    </script>
@endsection
