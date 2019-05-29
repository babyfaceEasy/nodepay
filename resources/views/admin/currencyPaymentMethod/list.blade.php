@extends('admin.layouts.master')
@section('title', 'Currency Payment Methods')
@section('page_content')

<div class="box box-default">
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                <div class="top-bar-title padding-bottom">Currency Payment Methods</div>
            </div>
        </div>
    </div>
</div>

<div class="box">
  <div class="box-body">
    <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Currency : <span class="currencyName">{{ $currency->name }}</span>
        <span class="caret"></span></button>
        <ul class="dropdown-menu">
          @foreach($currencyList as $currencyItem)
            <li class="listItem" data-rel="{{$currencyItem->id}}">
              <a href="#">{{$currencyItem->name}}</a>
            </li>
          @endforeach
        </ul>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-md-3">
     @include('admin.common.paymentMethod_menu')
  </div>

  <div class="col-md-9">
    <div class="box box-info">
      <div class="box-header with-border text-center">
        <h3 class="box-title">
          @if($list_menu == 'twoCheckout'){{ ucwords(str_replace('two', '2', $list_menu)) }} Settings
          @elseif($list_menu == 'bank')
          {{ 'Manage Banks' }}
          @else{{ ucfirst($list_menu) }} Settings
          @endif
        </h3>
      </div>

        <form action='{{url('admin/settings/payment-methods/update-paymentMethod-Credentials')}}' class="form-horizontal" method="POST" id="currencyPaymentMethod_form">
          {!! csrf_field() !!}

          <input type="hidden" value="{{ isset($currencyPaymentMethod->id) ? $currencyPaymentMethod->id : '' }}" name="id" id="id">
          <input type="hidden" value="{{ $currency->id }}" name="currency_id" id="currency_id">
          <input type="hidden" value="{{ $paymentMethod }}" name="paymentMethod" id="paymentMethod">
          <input type="hidden" value="{{ $list_menu }}" name="tabText" id="tabText">

	        <div class="box-body">

	        @if($list_menu == 'stripe')
	            <!-- Stripe - Secret Key -->
	            <div class="form-group">
	              <label class="col-sm-3 control-label" for="stripe[secret_key]">Secret Key</label>
	              <div class="col-sm-5">

	                <input class="form-control" name="stripe[secret_key]" type="text" placeholder="Stripe Secret Key"
	                value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->secret_key : '' }}" id="stripe_secret_key">

	                @if ($errors->has('stripe[secret_key]'))
	                  <span class="help-block">
	                      <strong>{{ $errors->first('stripe[secret_key]') }}</strong>
	                  </span>
	                @endif
	              </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- Stripe - Publishable Key -->
	            <div class="form-group">
	              <label class="col-sm-3 control-label" for="stripe[publishable_key]">Publishable Key</label>
	              <div class="col-sm-5">

	                <input class="form-control" name="stripe[publishable_key]" type="text" placeholder="Stripe Publishable Key"
	                value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->publishable_key : '' }}" id="stripe_publishable_key">

	                @if ($errors->has('stripe[publishable_key]'))
	                  <span class="help-block">
	                      <strong>{{ $errors->first('stripe[publishable_key]') }}</strong>
	                  </span>
	                @endif
	              </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- processing_time -->
	            <div class="form-group">
	                <label class="col-sm-3 control-label" for="processing_time">Processing Time (days)</label>
	                <div class="col-sm-5">
	                  <input class="form-control" name="processing_time" type="text" placeholder="Stripe Processing Time"
	                  value="{{ isset($currencyPaymentMethod->processing_time) ? $currencyPaymentMethod->processing_time : '' }}" id="processing_time">

	                  @if ($errors->has('processing_time'))
	                        <span class="help-block">
	                            <strong>{{ $errors->first('processing_time') }}</strong>
	                        </span>
	                  @endif
	                </div>
	            </div>
	            <div class="clearfix"></div>

	            @php
	              if (isset($currencyPaymentMethod->activated_for))
	              {
	                $decode=json_decode($currencyPaymentMethod->activated_for);
	              }
	            @endphp

	            <!-- Stripe - Status -->
	            <div class="form-group">
	                <label class="col-sm-3 control-label" for="stripe_status">Status</label>
	                <div class="col-sm-5">
	                  <select class="form-control" name="stripe_status" id="stripe_status">
	                      <option value=''>Select Status</option>
	                      <option value='Active' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['deposit' => '']) ? 'selected':"" }}>Active</option>
	                      <option value='Inactive' {{isset($currencyPaymentMethod->activated_for) &&  $currencyPaymentMethod->activated_for == json_encode(['' => '']) ? 'selected':"" }}>Inactive</option>
	                  </select>
	                </div>
	            </div>
	            <div class="clearfix"></div>

	            <div class="box-footer">
	              <a id="cancel_anchor" href="{{ url("admin/settings/currency") }}" class="btn btn-danger btn-flat">Cancel</a>
	              <button type="submit" class="btn btn-primary btn-flat pull-right" id="paymentMethodList_update">
	                  <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="paymentMethodList_update_text">Update</span>
	              </button>
	            </div>

			@elseif ($list_menu == 'paypal')
			  <!-- paypal - Client ID -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="paypal[client_id]">Client ID</label>
			        <div class="col-sm-5">
			          <input class="form-control" name="paypal[client_id]" type="text" placeholder="PayPal Client ID"
			          value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->client_id : '' }}" id="paypal_client_id">

			          @if ($errors->has('paypal[client_id]'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('paypal[client_id]') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- paypal - Client Secret -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="paypal[client_secret]">Client Secret</label>
			        <div class="col-sm-5">
			          <input class="form-control" name="paypal[client_secret]" type="text" placeholder="PayPal Client Secret"
			          value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->client_secret : '' }}" id="paypal_client_secret">
			          @if ($errors->has('paypal[client_secret]'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('paypal[client_secret]') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>

			  <!-- paypal - processing_time -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="processing_time">Processing Time (days)</label>
			        <div class="col-sm-5">
			          <input class="form-control" name="processing_time" type="text" placeholder="PayPal Processing Time"
			          value="{{ isset($currencyPaymentMethod->processing_time) ? $currencyPaymentMethod->processing_time : '' }}" id="processing_time">

			          @if ($errors->has('processing_time'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('processing_time') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- paypal - Mode -->
			  <div class="form-group">
			      <label class="col-sm-3 control-label" for="paypal[mode]">Mode</label>
			      <div class="col-sm-5">
			        <select class="form-control" name="paypal[mode]" id="paypal_mode">
			            <option value="">Select Mode</option>
			            <option value='sandbox' {{ isset($currencyPaymentMethod->method_data) && (json_decode($currencyPaymentMethod->method_data)->mode) == 'sandbox' ? 'selected':"" }} >sandbox</option>
			            <option value='live' {{ isset($currencyPaymentMethod->method_data) && (json_decode($currencyPaymentMethod->method_data)->mode) == 'live' ? 'selected':"" }} >live</option>
			        </select>
			      </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- paypal - Status -->
			  <div class="form-group">
			      <label class="col-sm-3 control-label" for="paypal_status">Status</label>
			      <div class="col-sm-5">
			        <select class="form-control" name="paypal_status" id="paypal_status">
			            <option value=''>Select Status</option>

			            <option value='Active' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['deposit' => '']) ? 'selected':"" }}>Active</option>
			            <option value='Inactive' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['' => '']) ? 'selected':"" }}>Inactive</option>

			        </select>
			      </div>
			  </div>
			  <div class="clearfix"></div>

			  <div class="box-footer">
			    <a id="cancel_anchor" href="{{ url("admin/settings/currency") }}" class="btn btn-danger btn-flat">Cancel</a>
			    <button type="submit" class="btn btn-primary btn-flat pull-right" id="paymentMethodList_update">
			        <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="paymentMethodList_update_text">Update</span>
			    </button>
			  </div>

			@elseif ($list_menu == 'twoCheckout')
			  <!-- 2Checkout - Seller ID -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="twoCheckout[seller_id]">Seller ID</label>
			        <div class="col-sm-5">
			          <input class="form-control" name="twoCheckout[seller_id]" type="text" placeholder="2Checkout Seller ID"
			          value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->seller_id : '' }}" id="twoCheckout_seller_id">
			          @if ($errors->has('twoCheckout[seller_id]'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('twoCheckout[seller_id]') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- 2Checkout - processing_time -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="processing_time">Processing Time (days)</label>
			        <div class="col-sm-5">
			          <input class="form-control" name="processing_time" type="text" placeholder="2Checkout Processing Time"
			          value="{{ isset($currencyPaymentMethod->processing_time) ? $currencyPaymentMethod->processing_time : '' }}" id="processing_time">

			          @if ($errors->has('processing_time'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('processing_time') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- 2Checkout - Mode -->
			  <div class="form-group">
			      <label class="col-sm-3 control-label" for="twoCheckout[mode]">Mode</label>
			      <div class="col-sm-5">
			        <select class="form-control" name="twoCheckout[mode]" id="twoCheckout_mode">
			            <option value="">Select Mode</option>
			            <option value='sandbox' {{ isset($currencyPaymentMethod->method_data) && (json_decode($currencyPaymentMethod->method_data)->mode) == 'sandbox' ? 'selected':"" }} >sandbox</option>
			            <option value='live' {{ isset($currencyPaymentMethod->method_data) && (json_decode($currencyPaymentMethod->method_data)->mode) == 'live' ? 'selected':"" }} >live</option>
			        </select>
			      </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- twoCheckout - Status -->
			  <div class="form-group">
			      <label class="col-sm-3 control-label" for="twoCheckout_status">Status</label>
			      <div class="col-sm-5">
			        <select class="form-control" name="twoCheckout_status" id="twoCheckout_status">
			            <option value=''>Select Status</option>
			            <option value='Active' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['deposit' => '']) ? 'selected':"" }}>Active</option>
			            <option value='Inactive' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['' => '']) ? 'selected':"" }}>Inactive</option>
			        </select>
			      </div>
			  </div>
			  <div class="clearfix"></div>

			  <div class="box-footer">
			    <a id="cancel_anchor" href="{{ url("admin/settings/currency") }}" class="btn btn-danger btn-flat">Cancel</a>
			    <button type="submit" class="btn btn-primary btn-flat pull-right" id="paymentMethodList_update">
			        <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="paymentMethodList_update_text">Update</span>
			    </button>
			  </div>

			@elseif ($list_menu == 'payUMoney')
			  <!-- PayUMoney - Secret Key -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="payUMoney[key]">Secret Key</label>
			        <div class="col-sm-5">
			          <input class="form-control payUMoney[key]" name="payUMoney[key]" type="text" placeholder="PayUMoney Secret Key"
			          value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->key : '' }}" id="payUMoney_key">
			          @if ($errors->has('payUMoney[key]'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('payUMoney[key]') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- PayUMoney - Salted Key -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="payUMoney[salt]">Salted Key</label>
			        <div class="col-sm-5">
			          <input class="form-control payUMoney[salt]" name="payUMoney[salt]" type="text" placeholder="PayUMoney Salted Key"
			          value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->salt : '' }}" id="payUMoney_salt">
			          @if ($errors->has('payUMoney[salt]'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('payUMoney[salt]') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- PayUMoney - processing_time -->
			  <div class="form-group">
			        <label class="col-sm-3 control-label" for="processing_time">Processing Time (days)</label>
			        <div class="col-sm-5">
			          <input class="form-control processing_time" name="processing_time" type="text" placeholder="PayUMoney Processing Time"
			          value="{{ isset($currencyPaymentMethod->processing_time) ? $currencyPaymentMethod->processing_time : '' }}" id="processing_time">

			          @if ($errors->has('processing_time'))
			                <span class="help-block">
			                    <strong>{{ $errors->first('processing_time') }}</strong>
			                </span>
			          @endif
			        </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- PayUMoney - Mode -->
			  <div class="form-group">
			      <label class="col-sm-3 control-label" for="payUMoney[mode]">Mode</label>
			      <div class="col-sm-5">
			        <select class="form-control" name="payUMoney[mode]" id="payUMoney_mode">
			            <option value="">Select Mode</option>
			            <option value='sandbox' {{ isset($currencyPaymentMethod->method_data) && (json_decode($currencyPaymentMethod->method_data)->mode) == 'sandbox' ? 'selected':"" }} >sandbox</option>
			            <option value='live' {{ isset($currencyPaymentMethod->method_data) && (json_decode($currencyPaymentMethod->method_data)->mode) == 'live' ? 'selected':"" }} >live</option>
			        </select>
			      </div>
			  </div>
			  <div class="clearfix"></div>

			  <!-- payUMoney - Status -->
			  <div class="form-group">
			      <label class="col-sm-3 control-label" for="payUMoney_status">Status</label>
			      <div class="col-sm-5">
			        <select class="form-control" name="payUMoney_status" id="payUMoney_status">
			            <option value=''>Select Status</option>
			            <option value='Active' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['deposit' => '']) ? 'selected':"" }}>Active</option>
			            <option value='Inactive' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['' => '']) ? 'selected':"" }}>Inactive</option>
			        </select>
			      </div>
			  </div>
			  <div class="clearfix"></div>

			  <div class="box-footer">
			    <a id="cancel_anchor" href="{{ url("admin/settings/currency") }}" class="btn btn-danger btn-flat">Cancel</a>
			    <button type="submit" class="btn btn-primary btn-flat pull-right" id="paymentMethodList_update">
			        <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="paymentMethodList_update_text">Update</span>
			    </button>
			  </div>

			@elseif ($list_menu == 'coinPayments')
	            <!-- coinPayments - Merchant Id -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="coinPayments[merchant_id]">Merchant Id</label>
	                  <div class="col-sm-5">
	                    <input class="form-control coinPayments[merchant_id]" name="coinPayments[merchant_id]" type="text" placeholder="CoinPayments Merchant Id"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->merchant_id : '' }}" id="coinPayments_merchant_id">
	                    @if ($errors->has('coinPayments[merchant_id]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('coinPayments[merchant_id]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- coinPayments - Public Key -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="coinPayments[public_key]">Public Key</label>
	                  <div class="col-sm-5">
	                    <input class="form-control coinPayments[public_key]" name="coinPayments[public_key]" type="text" placeholder="CoinPayments Public Key"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->public_key : '' }}" id="coinPayments_public_key">
	                    @if ($errors->has('coinPayments[public_key]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('coinPayments[public_key]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- coinPayments - Private Key -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="coinPayments[private_key]">Private Key</label>
	                  <div class="col-sm-5">
	                    <input class="form-control coinPayments[private_key]" name="coinPayments[private_key]" type="text" placeholder="CoinPayments Private Key"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->private_key : '' }}" id="coinPayments_private_key">
	                    @if ($errors->has('coinPayments[private_key]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('coinPayments[private_key]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- coinPayments - processing_time -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="processing_time">Processing Time (days)</label>
	                  <div class="col-sm-5">
	                    <input class="form-control processing_time" name="processing_time" type="text" placeholder="CoinPayments Processing Time"
	                    value="{{ isset($currencyPaymentMethod->processing_time) ? $currencyPaymentMethod->processing_time : '' }}" id="processing_time">

	                    @if ($errors->has('processing_time'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('processing_time') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- coinPayments - Status -->
	              <div class="form-group">
	                  <label class="col-sm-3 control-label" for="coinPayments_status">Status</label>
	                  <div class="col-sm-5">
	                    <select class="form-control" name="coinPayments_status" id="coinPayments_status">
	                        <option value=''>Select Status</option>
	                        <option value='Active' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['deposit' => '']) ? 'selected':"" }}>Active</option>
	                        <option value='Inactive' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['' => '']) ? 'selected':"" }}>Inactive</option>
	                    </select>
	                  </div>
	              </div>
	              <div class="clearfix"></div>

	            <div class="box-footer">
	                <a id="cancel_anchor" href="{{ url("admin/settings/currency") }}" class="btn btn-danger btn-flat">Cancel</a>
	                <button type="submit" class="btn btn-primary btn-flat pull-right" id="paymentMethodList_update">
	                    <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="paymentMethodList_update_text">Update</span>
	                </button>
	            </div>

			@elseif ($list_menu == 'Payeer')

	            <!-- Payeer - Merchant Id -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="payeer[merchant_id]">Merchant Id</label>
	                  <div class="col-sm-5">
	                    <input class="form-control payeer[merchant_id]" name="payeer[merchant_id]" type="text" placeholder="Payeer Merchant Id"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->merchant_id : '' }}" id="payeer_merchant_id">
	                    @if ($errors->has('payeer[merchant_id]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('payeer[merchant_id]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- Payeer - Secret Key -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="payeer[secret_key]">Secret Key</label>
	                  <div class="col-sm-5">
	                    <input class="form-control payeer[secret_key]" name="payeer[secret_key]" type="text" placeholder="Payeer Merchant Secret Key"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->secret_key : '' }}" id="payeer_secret_key">
	                    @if ($errors->has('payeer[secret_key]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('payeer[secret_key]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- Payeer - Encryption Key -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="payeer[encryption_key]">Encryption Key</label>
	                  <div class="col-sm-5">
	                    <input class="form-control payeer[encryption_key]" name="payeer[encryption_key]" type="text" placeholder="Payeer Merchant Encryption Key"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->encryption_key : '' }}" id="payeer_encryption_key">
	                    @if ($errors->has('payeer[encryption_key]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('payeer[encryption_key]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>


	            <!-- Payeer - processing_time -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="processing_time">Processing Time (days)</label>
	                  <div class="col-sm-5">
	                    <input class="form-control processing_time" name="processing_time" type="text" placeholder="Payeer Processing Time"
	                    value="{{ isset($currencyPaymentMethod->processing_time) ? $currencyPaymentMethod->processing_time : '' }}" id="processing_time">

	                    @if ($errors->has('processing_time'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('processing_time') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- Payeer - Status -->
				<div class="form-group">
				  <label class="col-sm-3 control-label" for="payeer_status">Status</label>
				  <div class="col-sm-5">
				    <select class="form-control" name="payeer_status" id="payeer_status">
				        <option value=''>Select Status</option>
				        <option value='Active' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['deposit' => '']) ? 'selected':"" }}>Active</option>
				        <option value='Inactive' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['' => '']) ? 'selected':"" }}>Inactive</option>
				    </select>
				  </div>
				</div>
				<div class="clearfix"></div>

	            <div class="box-footer">
	                <a id="cancel_anchor" href="{{ url("admin/settings/currency") }}" class="btn btn-danger btn-flat">Cancel</a>
	                <button type="submit" class="btn btn-primary btn-flat pull-right" id="paymentMethodList_update">
	                    <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="paymentMethodList_update_text">Update</span>
	                </button>
	            </div>


	        @elseif ($list_menu == 'perfectMoney')
	            <!-- perfectMoney - Account Id -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="perfectMoney[account_id]">Account Id</label>
	                  <div class="col-sm-5">
	                    <input class="form-control perfectMoney[account_id]" name="perfectMoney[account_id]" type="text" placeholder="PerfectMoney Account Id"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->account_id : '' }}" id="perfectMoney_account_id">
	                    @if ($errors->has('perfectMoney[account_id]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('perfectMoney[account_id]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- perfectMoney -Alternative Password -->
	            <div class="form-group">
	                  <label class="col-sm-3 control-label" for="perfectMoney[alter_password]">Alternate Passphrase</label>
	                  <div class="col-sm-5">
	                    <input class="form-control perfectMoney[alter_password]" name="perfectMoney[alter_password]" type="text" placeholder="PerfectMoney Alternative Password"
	                    value="{{ isset($currencyPaymentMethod->method_data) ? json_decode($currencyPaymentMethod->method_data)->alter_password : '' }}" id="perfectMoney_alter_password">
	                    @if ($errors->has('perfectMoney[alter_password]'))
	                          <span class="help-block">
	                              <strong>{{ $errors->first('perfectMoney[alter_password]') }}</strong>
	                          </span>
	                    @endif
	                  </div>
	            </div>
	            <div class="clearfix"></div>

	            <!-- perfectMoney - processing_time -->
				<div class="form-group">
				    <label class="col-sm-3 control-label" for="processing_time">Processing Time (days)</label>
				    <div class="col-sm-5">
				      <input class="form-control processing_time" name="processing_time" type="text" placeholder="PerfectMoney Processing Time"
				      value="{{ isset($currencyPaymentMethod->processing_time) ? $currencyPaymentMethod->processing_time : '' }}" id="processing_time">
				      @if ($errors->has('processing_time'))
				            <span class="help-block">
				                <strong>{{ $errors->first('processing_time') }}</strong>
				            </span>
				      @endif
				    </div>
				</div>
			  	<div class="clearfix"></div>

	            <!-- perfect money - Status -->
				<div class="form-group">
				  <label class="col-sm-3 control-label" for="perfectMoney_status">Status</label>
				  <div class="col-sm-5">
				    <select class="form-control" name="perfectMoney_status" id="perfectMoney_status">
				        <option value=''>Select Status</option>
				        <option value='Active' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['deposit' => '']) ? 'selected':"" }}>Active</option>
				        <option value='Inactive' {{ isset($currencyPaymentMethod->activated_for) && $currencyPaymentMethod->activated_for == json_encode(['' => '']) ? 'selected':"" }}>Inactive</option>
				    </select>
				  </div>
				</div>
				<div class="clearfix"></div>

	            <div class="box-footer">
	                <a id="cancel_anchor" href="{{ url("admin/settings/currency") }}" class="btn btn-danger btn-flat">Cancel</a>
	                <button type="submit" class="btn btn-primary btn-flat pull-right" id="paymentMethodList_update">
	                    <i class="spinner fa fa-spinner fa-spin" style="display: none;"></i> <span id="paymentMethodList_update_text">Update</span>
	                </button>
	            </div>
	        @endif

	        </div>
      	</form>

		@if ($list_menu == 'bank')
		  <div class="row">
		    <div class="col-md-10 col-md-offset-1">

		      <button data-toggle="modal" data-target="#addModal" id="addBtn" style="margin-bottom: 20px;margin-left: 10px;" class="btn btn-success btn-flat pull-left" type="button">
		        <span class="fa fa-plus"> &nbsp;</span>Add Bank
		      </button>

		      <div class="table-responsive">
		          {{-- @if($banks->count() > 0) --}}
		              <table class="table table-bordered">
		              <table class="table text-center" id="banks_list">
		                  <thead>
		                  <tr>
		                      <td style="display: none;"><strong>ID</strong></td>
		                      <td><strong>Bank Name</strong></td>
		                      <td><strong>Account</strong></td>
		                      <td><strong>Default</strong></td>
		                      <td><strong>Status</strong></td>
		                      <td><strong>@lang('message.dashboard.payout.payout-setting.action')</strong></td>
		                  </tr>
		                  </thead>
		                  <tbody id="bank_body">
		                    {{-- @foreach($banks as $bank)
		                        <tr>
		                            <td style="display: none;">{{ $bank->id }}</td>
		                            <td>{{ $bank->bank_name }}</td>

		                            <td>
		                                {{$bank->account_name}}&nbsp;&nbsp;(*****{{substr($bank->account_number,-4)}})&nbsp;&nbsp;{{$bank->bank_name}}
		                            </td>
		                            @if ($bank->is_default == "Yes")
		                                <td><span class="label label-success">Yes</span></td>
		                            @elseif ($bank->is_default == "No")
		                                <td><span class="label label-danger">No</span></td>
		                            @endif

		                            <td>
		                                <a data-id="{{$bank->id}}" class="btn btn-xs btn-primary edit-setting"><i class="glyphicon glyphicon-edit"></i></a>
		                                <button data-id="{{$bank->id}}" type="button" class="btn btn-xs btn-danger delete"><i class="glyphicon glyphicon-trash"></i></button>
		                            </td>
		                        </tr>
		                    @endforeach --}}
		                  </tbody>
		              </table>
		          {{-- @endif --}}
		      </div>
		    </div>
		  </div>

		  <!-- addModal Modal-->
		  	<div class="modal fade" id="addModal" role="dialog">
		      	<div class="modal-dialog modal-lg">
		          <!-- Modal content-->
		          	<div class="modal-content">
						<div class="modal-header" style="display: block;">
						  <button type="button" class="close" data-dismiss="modal">&times;</button>
						  <h4 class="modal-title text-center">Add Bank Details</h4>
						</div>

						<form id="add-bank" method="post">
						  {{csrf_field()}}

						<div class="modal-body">
							<div class="row">
								<div class="col-md-12" style="position: relative;right: 27.4px;">
									<div class="col-md-1"></div>
									<div class="col-md-6">
										<div id="errors"></div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">

								  <div class="col-md-1"></div>
								  <div class="col-md-4">
								  <div class="form-group">
								        <label>Default</label>
								        <select class="form-control" name="default" id="default">
								            <option value='Yes'>Yes</option>
								            <option value='No'>No</option>
								        </select>
								    </div>
								  </div>

								  <div class="col-md-1"></div>
								  <div class="col-md-4">
								  <div class="form-group">
								        <label>Status</label>
								        <select class="form-control" name="status" id="status">
								            <option value='Active'>Active</option>
								            <option value='Inactive'>Inactive</option>
								        </select>
								    </div>
								  </div>
								</div>
							</div>

						  	<br>

							<div class="row">
							<div class="col-md-12">
							  <div class="col-md-1"></div>
							  <div class="col-md-4">
							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.bank-account-holder-name')</label>
							        <input name="account_name" id="account_name" class="form-control">
							    </div>
							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.account-number')</label>
							        <input name="account_number" id="account_number" class="form-control">
							    </div>
							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.swift-code')</label>
							        <input name="swift_code" id="swift_code" class="form-control">
							    </div>
							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.bank-name')</label>
							        <input name="bank_name" id="bank_name" class="form-control">
							    </div>
							  </div>

							  <div class="col-md-1"></div>

							  <div class="col-md-4">
							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.branch-name')</label>
							        <input name="branch_name" id="branch_name" class="form-control">
							    </div>

							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.branch-city')</label>
							        <input name="branch_city" id="branch_city" class="form-control">
							    </div>

							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.branch-address')</label>
							        <input name="branch_address" id="branch_address" class="form-control">
							    </div>

							    <div class="form-group">
							        <label>@lang('message.dashboard.payout.payout-setting.modal.country')</label>
							        <select name="country" id="country" class="form-control">
							            @foreach($countries as $country)
							                <option value="{{$country->id}}">{{$country->name}}</option>
							            @endforeach
							        </select>
							    </div>
							  </div>
							</div>
							</div>
						</div>

						<div class="modal-footer">
						  <div class="row">
						    <div class="col-md-12">
						      <div class="col-md-1"></div>
						      <div class="col-md-4"><button type="button" class="btn btn-danger btn-flat pull-left" data-dismiss="modal">@lang('message.form.close')</button></div>
						      <div class="col-md-1"></div>
						      <div class="col-md-4">
						        <button type="submit" class="btn btn-primary btn-flat pull-right" id="submit_btn">@lang('message.form.submit')</button>
						      </div>
						    </div>
						  </div>
						</div>
						</form>
		          	</div>
		      	</div>
		  	</div>

		  <!-- editModal Modal-->
		  <div class="modal fade" id="editModal" role="dialog">
		      <div class="modal-dialog modal-lg">
		          <!-- Modal content-->
		          <div class="modal-content">
		              <div class="modal-header" style="display: block;">
		                  <button type="button" class="close" data-dismiss="modal">&times;</button>
		                  <h4 class="modal-title text-center">Edit Bank Details</h4>
		              </div>

		              <form id="edit-bank" method="post">
		                  {{csrf_field()}}

						<input type="hidden" name="bank_id" id="bank_id">
						<input type="hidden" name="edit_currency_id" id="edit_currency_id">
		  				<input type="hidden" name="edit_paymentMethod" id="edit_paymentMethod">
		  				<input type="hidden" name="currencyPaymentMethodId" id="currencyPaymentMethodId">

		                <div class="modal-body">

		                  	{{-- errors --}}
							<div class="row">
								<div class="col-md-12" style="position: relative;right: 27.4px;">
									<div class="col-md-1"></div>
									<div class="col-md-6">
										<div id="edit_errors"></div>
									</div>
								</div>
							</div>

		                  <div class="row">
		                    <div class="col-md-12">
		                      <div class="col-md-1"></div>
		                      <div class="col-md-4">
		                      <div class="form-group">
		                            <label>Default</label>
		                            <select class="form-control" name="edit_default" id="edit_default">
		                                <option value='Yes'>Yes</option>
		                                <option value='No'>No</option>
		                            </select>
		                        </div>
		                      </div>

		                      <div class="col-md-1"></div>
							  <div class="col-md-4">
							  <div class="form-group">
							        <label>Status</label>
							        <select class="form-control" name="edit_status" id="edit_status">
							            <option value='Active'>Active</option>
							            <option value='Inactive'>Inactive</option>
							        </select>
							    </div>
							  </div>
		                    </div>
		                  </div>
		                  <br>

		                  <div class="row">
		                    <div class="col-md-12">
		                      <div class="col-md-1"></div>
		                      <div class="col-md-4">
		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.bank-account-holder-name')</label>
		                            <input name="edit_account_name" id="edit_account_name" class="form-control">
		                        </div>
		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.account-number')</label>
		                            <input name="edit_account_number" id="edit_account_number" class="form-control">
		                        </div>
		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.swift-code')</label>
		                            <input name="edit_swift_code" id="edit_swift_code" class="form-control">
		                        </div>
		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.bank-name')</label>
		                            <input name="edit_bank_name" id="edit_bank_name" class="form-control">
		                        </div>
		                      </div>

		                      <div class="col-md-1"></div>

		                      <div class="col-md-4">
		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.branch-name')</label>
		                            <input name="edit_branch_name" id="edit_branch_name" class="form-control">
		                        </div>

		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.branch-city')</label>
		                            <input name="edit_branch_city" id="edit_branch_city" class="form-control">
		                        </div>

		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.branch-address')</label>
		                            <input name="edit_branch_address" id="edit_branch_address" class="form-control">
		                        </div>

		                        <div class="form-group">
		                            <label>@lang('message.dashboard.payout.payout-setting.modal.country')</label>
		                            <select name="edit_country" id="edit_country" class="form-control">
		                                @foreach($countries as $country)
		                                    <option value="{{ $country->id }}">{{$country->name}}</option>
		                                @endforeach
		                            </select>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </div>

		                <div class="modal-footer">
		                  <div class="row">
		                    <div class="col-md-12">
		                      <div class="col-md-1"></div>
		                      <div class="col-md-4"><button type="button" class="btn btn-danger btn-flat pull-left" data-dismiss="modal">@lang('message.form.close')</button></div>
		                      <div class="col-md-1"></div>
		                      <div class="col-md-4">
		                        <button type="submit" class="btn btn-primary btn-flat pull-right" id="submit_btn">Update</button>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		              </form>

		          </div>
		      </div>
		  </div>
		@endif

    </div>
  </div>
  <!-- /.col -->
</div>
<!-- /.row -->

@endsection

@push('extra_body_scripts')

<!-- jquery.validate -->
<script src="{{ asset('public/dist/js/jquery.validate.min.js') }}" type="text/javascript"></script>

<!-- jquery.validate additional-methods -->
<script src="{{ asset('public/dist/js/jquery-validation-1.17.0/dist/additional-methods.min.js') }}" type="text/javascript"></script>
<!-- /dist -->

<script type="text/javascript">

    $(function () {
        $(".select2").select2({
        });
    });

    $('#currencyPaymentMethod_form').validate({
        rules: {
            "stripe[secret_key]": {
                required: true,
            },
            "stripe[publishable_key]":{
              required: true,
            },
            stripe_status:{
               required: true,
            },
            "paypal[client_id]": {
                required: true,
            },
            "paypal[client_secret]":{
              required: true,
            },
            "paypal[mode]":{
               required: true,
            },
            paypal_status:{
               required: true,
            },
            "twoCheckout[seller_id]": {
                required: true,
            },
            "twoCheckout[mode]":{
               required: true,
            },
            twoCheckout_status:{
               required: true,
            },
            "payUMoney[key]":{
              required: true,
            },
            "payUMoney[salt]":{
              required: true,
            },
            "payUMoney[mode]":{
               required: true,
            },
            payUMoney_status:{
               required: true,
            },
            "coinPayments[merchant_id]":{
              required: true,
            },
            "coinPayments[public_key]":{
              required: true,
            },
            "coinPayments[private_key]":{
              required: true,
            },
            coinPayments_status:{
               required: true,
            },
            "perfectMoney[account_id]":{
               required: true,
            },
            "perfectMoney[alter_password]":{
               required: true,
            },
            "payeer[merchant_id]":{
              required: true,
            },
            "payeer[secret_key]":{
              required: true,
            },
            "payeer[encryption_key]":{
              required: true,
            },
            payeer_status:{
               required: true,
            },
            processing_time:{
               required: true,
               number: true,
            },
        },
        messages: {
            "paypal[mode]": {
                required: "Please select a mode."
            },
            "twoCheckout[mode]": {
                required: "Please select a mode."
            },
            "payUMoney[mode]": {
                required: "Please select a mode."
            }
        },
        submitHandler: function(form)
        {
            $("#paymentMethodList_update").attr("disabled", true);
            $('#cancel_anchor').attr("disabled","disabled");
            $(".spinner").show();
            $("#paymentMethodList_update_text").text('Updating...');

            // Click False
            $('#paymentMethodList_update').click(false);
            $('#cancel_anchor').click(false);
            form.submit();
        }
    });

   	// $('#add-bank').validate({
    //     rules: {
    //         account_name: {
    //             required: true
    //         },
    //         account_number: {
    //             required: true,
    //             number: true,
    //         },
    //         swift_code: {
    //             required: true,
    //             number: true,
    //         },
    //         bank_name: {
    //             required: true
    //         },
    //         branch_name: {
    //             required: true
    //         },
    //         branch_city: {
    //             required: true
    //         },
    //         branch_address: {
    //             required: true
    //         },
    //         country: {
    //             required: true
    //         }
    //     },
    // });


    $(document).ready(function() {
    	$('#addModal').on('hidden.bs.modal', function (e) {
	      $(this).find("input,select").val('').end();
	    });
    });


    // ADD
    $(document).ready(function()
    {
    	$('#add-bank').submit(function(event)
	    {
	        event.preventDefault();

	        var currency_id = $('#currency_id').val();
	        var paymentMethod = $('#paymentMethod').val();
	        var is_default = $('#default').val();

	        var status = $('#status').val();

	        var account_name = $('#account_name').val();
	        var account_number = $('#account_number').val();
	        var swift_code = $('#swift_code').val();

	        var bank_name = $('#bank_name').val();
	        var branch_name = $('#branch_name').val();
	        var branch_city = $('#branch_city').val();

	        var branch_address = $('#branch_address').val();
	        var country = $('#country').val();

	        $.ajax({
	          headers:
	          {
	              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          },
	          method: "POST",
	          url: SITE_URL + "/admin/settings/payment-methods/add-bank",
	          cache: false,
	          dataType:'json',
	          data: {
	          	'currency_id': currency_id,
	          	'paymentMethod': paymentMethod,
	          	'default': is_default,

	          	'status': status,

	          	'account_name': account_name,
	          	'account_number': account_number,
	          	'swift_code': swift_code,

	          	'bank_name': bank_name,
	          	'branch_name': branch_name,
	          	'branch_city': branch_city,

	          	'branch_address': branch_address,
	          	'country': country,
	          },
	        })
	        .done(function(response)
	        {
				if (response.status == true)
				{
					$('#edit_currency_id').val(response.currency_id);
					$('#edit_paymentMethod').val(response.paymentMethod);

					$('#addModal').modal('hide');
					swal({title: "Success!", text: response.message, type: "success"},
						function(){
						   window.location.reload();
						}
					);
				}
				else
				{
					var errorString = '<ul class="error">';
			        $.each( response.message,function(i,error)
			        {
			            errorString += '<li><strong>' + error + '</strong></li>';
			        });
			        errorString += '</ul>';
					$('#errors').html(errorString);
				}
	        });
	    });
    });

    //edit-setting
    $(document).on('click','.edit-setting', function (e)
    {
        e.preventDefault();

        var bank_id = $(this).data('id');
        var currency_id = $('#currency_id').val();
        var paymentMethod = $('#paymentMethod').val();

        if (bank_id && currency_id)
        {
        	getCpmId(bank_id,currency_id,paymentMethod);
        }
    });


    function getCpmId(bank_id,currency_id,paymentMethod)
    {
        $.ajax({
          headers:
          {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          method: "POST",
          url: SITE_URL + "/admin/settings/payment-methods/getCpmId",
          cache: false,
          dataType:'json',
          data: {
          	'bank_id': bank_id,
          	'currency_id': currency_id,
          },
        })
        .done(function(response)
        {
        	// log(bank_id);

			if (response.status == true)
			{
		        $('#bank_id').val(bank_id);
		        $('#edit_currency_id').val(currency_id);
		        $('#edit_paymentMethod').val(paymentMethod);
		        $('#currencyPaymentMethodId').val(response.cpmId);

		        $('#edit_default').val(response.is_default);

		        var activated_for = JSON.parse(response.cpmActivatedFor);
				if(activated_for.hasOwnProperty('deposit'))
				{
					$('#edit_status').val('Active');
				}
				else
				{
				  	$('#edit_status').val('Inactive');
				}
		        $('#edit_account_name').val(response.account_name);
		        $('#edit_account_number').val(response.account_number);
		        $('#edit_branch_address').val(response.bank_branch_address);
		        $('#edit_branch_city').val(response.bank_branch_city);
		        $('#edit_branch_name').val(response.bank_branch_name);
		        $('#edit_bank_name').val(response.bank_name);
		        $('#edit_country').val(response.country_id);
		        $('#edit_swift_code').val(response.swift_code);

		        $('#editModal').modal();
			}
			else
			{
			  	swal('Oops...', 'No response !', 'error');
			}
        });
    }


	// UPDATE
    $(document).ready(function()
    {
	    $('#edit-bank').submit(function(event)
	    {
	        event.preventDefault();

	        var bank_id = $('#bank_id').val();
	        var currencyPaymentMethodId = $('#currencyPaymentMethodId').val();
	        var edit_currency_id = $('#edit_currency_id').val();
	        var edit_paymentMethod = $('#edit_paymentMethod').val();

	        var edit_default = $('#edit_default').val();

	        var edit_status = $('#edit_status').val();

	        var edit_account_name = $('#edit_account_name').val();
	        var edit_account_number = $('#edit_account_number').val();
	        var edit_swift_code = $('#edit_swift_code').val();
	        var edit_bank_name = $('#edit_bank_name').val();
	        var edit_branch_name = $('#edit_branch_name').val();
	        var edit_branch_city = $('#edit_branch_city').val();
	        var edit_branch_address = $('#edit_branch_address').val();
	        var edit_country = $('#edit_country').val();

	        $.ajax({
	          headers:
	          {
	              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	          },
	          method: "POST",
	          url: SITE_URL + "/admin/settings/payment-methods/update-bank",
	          cache: false,
	          dataType:'json',
	          data: {
	          	'bank_id': bank_id,
	          	'currencyPaymentMethodId': currencyPaymentMethodId,
	          	'currency_id': edit_currency_id,
	          	'paymentMethod': edit_paymentMethod,
	          	'default': edit_default,

	          	'status': edit_status,

	          	'account_name': edit_account_name,
	          	'account_number': edit_account_number,
	          	'swift_code': edit_swift_code,
	          	'bank_name': edit_bank_name,
	          	'branch_name': edit_branch_name,
	          	'branch_city': edit_branch_city,
	          	'branch_address': edit_branch_address,
	          	'country': edit_country,
	          },
	        })
	        .done(function(response)
	        {
				if (response.status == true)
				{
				  $('#editModal').modal('hide');
				  swal({title: "Success!", text: response.message, type: "success"},
				    function(){
				       window.location.reload();
				    }
				  );
				}
				else
				{
					var errorString = '<ul class="error">';
				    $.each(response.message,function(i,error)
				    {
				        errorString += '<li><strong>' + error + '</strong></li>';
				    });
				    errorString += '</ul>';
					$('#edit_errors').html(errorString);
				}
	        });
	    });
    });


    //DELETE
    $(document).on('click', '.delete', function()
    {
        var id = $(this).data('id');

        var currencyPaymentMethodId = $('#currencyPaymentMethodId').val();

        swal({
          title: "Are you sure you want to delete?",
          text: "You won't be able to revert this!",
          type: "warning",
          showCancelButton: true,
          confirmButtonText: "Yes, delete it!",
          cancelButtonText: "Cancel",
          closeOnConfirm: false,
          showLoaderOnConfirm: true,
          closeOnCancel: true
        },
        function(isConfirm)
        {
            if (!isConfirm) return;

            if (isConfirm)
            {
                $.ajax({
                    headers:
                    {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    method: "POST",
                    url: SITE_URL+"/admin/settings/payment-methods/delete-bank",
                    dataType: "json",
                    cache: false,
                    data: {
                        'id': id,
                        'currencyPaymentMethodId': currencyPaymentMethodId,
                    }
                })
                .done(function(response)
                {
                  if (response.status == true)
                  {
                    swal({title: "Deleted!", text: response.message, type:response.type},
                        function(){
                           window.location.reload();
                        }
                    );
                  }
                  else
                  {
                    swal("Oops...", response.message, response.type);
                  }
                })
                .fail(function(){
                    swal('Oops...', 'Something went wrong with ajax !', 'error');
                });
            }
            else
            {
                swal("Cancelled", "You Cancelled", "error");
            }
        });
    });

	///////////////////////////////////////////////////////////////

    $(window).on('load',function()
    {
        var previousUrl = document.referrer;
        var urlByOwn    = SITE_URL+'/admin/settings/currency';
        if(previousUrl==urlByOwn)
        {
          localStorage.removeItem('currencyId');
          localStorage.removeItem('currencyName');
        }
        else
        {
          if((localStorage.getItem('currencyName')) && (localStorage.getItem('currencyId')))
          {
                $('.currencyName').text(localStorage.getItem('currencyName'));
                $('#currency_id').val(localStorage.getItem('currencyId'));
                getPaymentMethodsDetails();
          }
          else
          {
                getPaymentMethodsSpecificCurrencyDetails();
          }
        }
    });


    $('.listItem').on('click',function()
    {
		var currencyId       = $(this).attr('data-rel');
		var currencyName     = $(this).text();

		localStorage.setItem('currencyId',currencyId);
		localStorage.setItem('currencyName',currencyName);

		$('.currencyName').text(currencyName);
		$('#currency_id').val(currencyId);
		getPaymentMethodsDetails();
    });


    //Window on load/click on list item get fees limit details
    function getPaymentMethodsDetails()
    {
        var currencyId       = $('#currency_id').val();
        var paymentMethod    = $('#paymentMethod').val();
        var token            = $("input[name=_token]").val();


        var url              = SITE_URL+'/admin/settings/get-payment-methods-details';
		$.ajax({
			url : url,
			type : "post",
			// async : false,
			data : {
				'currency_id':currencyId,
				'paymentMethod':paymentMethod,
				'_token':token
			},
			dataType : 'json',
			success:function(data)
			{
				if (data.flag == true)
				{
					var tr = '';
			        $.each(data.banks, function(key, value)
			        {
			        	// console.log(value);
			          	tr += 	'<tr>'+
				                  	'<td style="display: none;">'+ value.id + '</td>'+
				                  	'<td>'+ value.bank_name +'</td>'+
				                  	'<td>'+ value.account_name  + '&nbsp;&nbsp;' + '(*****' + value.account_number.substr(-4) + ')&nbsp;&nbsp;' + value.bank_name +'</td>'+
				                  	'<td>'+ checkBankDefault(value.is_default) +'</td>'+
				                  	'<td>'+ checkBankStatus(value.activated_for) +'</td>'+
				                  	'<td>'+
					                  	'<a data-id="'+value.id+'" class="btn btn-xs btn-primary edit-setting"><i class="glyphicon glyphicon-edit"></i></a> '+
					                  	'<button data-id="'+value.id+'" type="button" class="btn btn-xs btn-danger delete"><i class="glyphicon glyphicon-trash"></i></button>' +
				                  	'</td>'+
				                '</tr>';
			        });
			       	$('#bank_body').html(tr);
				}
				else
				{
					$('#bank_body').html('');
				}

				if(data.status == 200)
				{
					$('#id').val(data.currencyPaymentMethod.id);

					$('#stripe_secret_key').val(JSON.parse(data.currencyPaymentMethod.method_data).secret_key);
					$('#stripe_publishable_key').val(JSON.parse(data.currencyPaymentMethod.method_data).publishable_key);

					$('#paypal_client_id').val(JSON.parse(data.currencyPaymentMethod.method_data).client_id);
					$('#paypal_client_secret').val(JSON.parse(data.currencyPaymentMethod.method_data).client_secret);
					$('#paypal_mode').val(JSON.parse(data.currencyPaymentMethod.method_data).mode);

					$('#twoCheckout_seller_id').val(JSON.parse(data.currencyPaymentMethod.method_data).seller_id);
					$('#twoCheckout_mode').val(JSON.parse(data.currencyPaymentMethod.method_data).mode);

					$('#payUMoney_key').val(JSON.parse(data.currencyPaymentMethod.method_data).key);
					$('#payUMoney_salt').val(JSON.parse(data.currencyPaymentMethod.method_data).salt);
					$('#payUMoney_mode').val(JSON.parse(data.currencyPaymentMethod.method_data).mode);

					$('#coinPayments_merchant_id').val(JSON.parse(data.currencyPaymentMethod.method_data).merchant_id);
					$('#coinPayments_public_key').val(JSON.parse(data.currencyPaymentMethod.method_data).public_key);
					$('#coinPayments_private_key').val(JSON.parse(data.currencyPaymentMethod.method_data).private_key);

					$('#perfectMoney_account_id').val(JSON.parse(data.currencyPaymentMethod.method_data).account_id);
					$('#perfectMoney_alter_password').val(JSON.parse(data.currencyPaymentMethod.method_data).alter_password);

					$('#payeer_merchant_id').val(JSON.parse(data.currencyPaymentMethod.method_data).merchant_id);
					$('#payeer_secret_key').val(JSON.parse(data.currencyPaymentMethod.method_data).secret_key);
					$('#payeer_encryption_key').val(JSON.parse(data.currencyPaymentMethod.method_data).encryption_key);

					$('#processing_time').val(data.currencyPaymentMethod.processing_time);

					var activated_for = JSON.parse(data.currencyPaymentMethod.activated_for);

					if(activated_for.hasOwnProperty('deposit'))
					{
						$('#stripe_status').val('Active');
						$('#paypal_status').val('Active');
						$('#twoCheckout_status').val('Active');
						$('#payUMoney_status').val('Active');
						$('#coinPayments_status').val('Active');
						$('#perfectMoney_status').val('Active');
						$('#payeer_status').val('Active');
					}
					else
					{
					  $('#stripe_status').val('Inactive');
					  $('#paypal_status').val('Inactive');
					  $('#twoCheckout_status').val('Inactive');
					  $('#payUMoney_status').val('Inactive');
					  $('#coinPayments_status').val('Inactive');
					  $('#perfectMoney_status').val('Inactive');
					  $('#payeer_status').val('Inactive');
					}
				}
				else
				{
					$('#id').val('');
					$('#stripe_secret_key').val('');
					$('#stripe_publishable_key').val('');

					$('#paypal_client_id').val('');
					$('#paypal_client_secret').val('');
					$('#paypal_mode').val('');

					$('#twoCheckout_seller_id').val('');
					$('#twoCheckout_mode').val('');

					$('#payUMoney_key').val('');
					$('#payUMoney_salt').val('');
					$('#payUMoney_mode').val('');

					$('#coinPayments_merchant_id').val('');
					$('#coinPayments_public_key').val('');
					$('#coinPayments_private_key').val('');

					$('#perfectMoney_account_id').val('');
					$('#perfectMoney_alter_password').val('');

					$('#payeer_merchant_id').val('');
					$('#payeer_secret_key').val('');
					$('#payeer_encryption_key').val('');

					$('#processing_time').val('');

					$('#stripe_status').val('');
					$('#paypal_status').val('');
					$('#twoCheckout_status').val('');
					$('#payUMoney_status').val('');
					$('#coinPayments_status').val('');
					$('#perfectMoney_status').val('');
					$('#payeer_status').val('');
				}
			},
			error: function(error){
			  console.log(error);
			}
        });
    }

    //Get Specific Currency Details
    function getPaymentMethodsSpecificCurrencyDetails()
    {
          var currencyId       = $('#currency_id').val();
          var paymentMethod = $('#paymentMethod').val();
          var token            = $("input[name=_token]").val();
          var url              = SITE_URL+'/admin/settings/get-payment-methods-specific-currency-details';

          $.ajax({
            url : url,
            type : "post",
            // async : false,
            data : {
              'currency_id':currencyId,
              'paymentMethod':paymentMethod,
              '_token':token
            },
            dataType : 'json',
            success:function(data)
            {
            	if (data.flag == true)
				{
					var tr = '';
			        $.each(data.banks, function(key, value)
			        {
			          	tr += 	'<tr>'+
				                  	'<td style="display: none;">'+ value.id + '</td>'+
				                  	'<td>'+ value.bank_name +'</td>'+
				                  	'<td>'+ value.account_name  + '&nbsp;&nbsp;' + '(*****' + value.account_number.substr(-4) + ')&nbsp;&nbsp;' + value.bank_name +'</td>'+
				                  	'<td>'+ checkBankDefault(value.is_default) +'</td>'+
				                  	'<td>'+ checkBankStatus(value.activated_for) +'</td>'+
				                  	'<td>'+
					                  	'<a data-id="'+value.id+'" class="btn btn-xs btn-primary edit-setting"><i class="glyphicon glyphicon-edit"></i></a> '+
					                  	'<button data-id="'+value.id+'" type="button" class="btn btn-xs btn-danger delete"><i class="glyphicon glyphicon-trash"></i></button>' +
				                  	'</td>'+

				                '</tr>';
			        });
			       	$('#bank_body').html(tr);
				}
				else
				{
					$('#bank_body').html('');
				}

                if(data.status == 200)
                {
					$('.currencyName').text(data.currency.name);
					$('#currency_id').val(data.currency.id);

					$('#stripe_secret_key').val(JSON.parse(data.currencyPaymentMethod.method_data).secret_key);
					$('#stripe_publishable_key').val(JSON.parse(data.currencyPaymentMethod.method_data).publishable_key);

					$('#paypal_client_id').val(JSON.parse(data.currencyPaymentMethod.method_data).client_id);
					$('#paypal_client_secret').val(JSON.parse(data.currencyPaymentMethod.method_data).client_secret);
					$('#paypal_mode').val(JSON.parse(data.currencyPaymentMethod.method_data).mode);

					$('#twoCheckout_seller_id').val(JSON.parse(data.currencyPaymentMethod.method_data).seller_id);
					$('#twoCheckout_mode').val(JSON.parse(data.currencyPaymentMethod.method_data).mode);

					$('#payUMoney_key').val(JSON.parse(data.currencyPaymentMethod.method_data).key);
					$('#payUMoney_salt').val(JSON.parse(data.currencyPaymentMethod.method_data).salt);
					$('#payUMoney_mode').val(JSON.parse(data.currencyPaymentMethod.method_data).mode);

					$('#coinPayments_merchant_id').val(JSON.parse(data.currencyPaymentMethod.method_data).merchant_id);
					$('#coinPayments_public_key').val(JSON.parse(data.currencyPaymentMethod.method_data).public_key);
					$('#coinPayments_private_key').val(JSON.parse(data.currencyPaymentMethod.method_data).private_key);

					$('#perfectMoney_account_id').val(JSON.parse(data.currencyPaymentMethod.method_data).account_id);
					$('#perfectMoney_alter_password').val(JSON.parse(data.currencyPaymentMethod.method_data).alter_password);

                  	$('#payeer_merchant_id').val(JSON.parse(data.currencyPaymentMethod.method_data).merchant_id);
					$('#payeer_secret_key').val(JSON.parse(data.currencyPaymentMethod.method_data).secret_key);
					$('#payeer_encryption_key').val(JSON.parse(data.currencyPaymentMethod.method_data).encryption_key);

					$('#processing_time').val(data.currencyPaymentMethod.processing_time);

					var activated_for = JSON.parse(data.currencyPaymentMethod.activated_for);
					if(activated_for.hasOwnProperty('deposit'))
					{
						$('#stripe_status').val('Active');
						$('#paypal_status').val('Active');
						$('#twoCheckout_status').val('Active');
						$('#payUMoney_status').val('Active');
						$('#coinPayments_status').val('Active');
						$('#perfectMoney_status').val('Active');
						$('#payeer_status').val('Active');
					}
					else
					{
						$('#stripe_status').val('Inactive');
						$('#paypal_status').val('Inactive');
						$('#twoCheckout_status').val('Inactive');
						$('#payUMoney_status').val('Inactive');
						$('#coinPayments_status').val('Inactive');
						$('#perfectMoney_status').val('Inactive');
						$('#payeer_status').val('Inactive');
					}
                }
                else
				{
					$('#id').val('');
					$('.currencyName').text(data.currency.name);
					$('#currency_id').val(data.currency.id);

					$('#stripe_secret_key').val('');
					$('#stripe_publishable_key').val('');

					$('#paypal_client_id').val('');
					$('#paypal_client_secret').val('');
					$('#paypal_mode').val('');

					$('#twoCheckout_seller_id').val('');
					$('#twoCheckout_mode').val('');

					$('#payUMoney_key').val('');
					$('#payUMoney_salt').val('');
					$('#payUMoney_mode').val('');

					$('#coinPayments_merchant_id').val('');
					$('#coinPayments_public_key').val('');
					$('#coinPayments_private_key').val('');

					$('#perfectMoney_account_id').val('');
					$('#perfectMoney_alter_password').val('');

					$('#payeer_merchant_id').val('');
					$('#payeer_secret_key').val('');
					$('#payeer_encryption_key').val('');

					$('#processing_time').val('');

					$('#stripe_status').val('');
					$('#paypal_status').val('');
					$('#twoCheckout_status').val('');
					$('#payUMoney_status').val('');
					$('#coinPayments_status').val('');
					$('#perfectMoney_status').val('');
					$('#payeer_status').val('');
            	}
            },
			error: function(error){
			  console.log(error);
			}
          });
    }


    function checkBankDefault(is_default)
	{
		var cell = '';
		if (is_default == "Yes")
		{
			cell = '<span class="label label-success">Yes</span>';
		}
		else if (is_default == "No")
		{
			cell = '<span class="label label-danger">No</span>';
		}
		return cell;
	}

	function checkBankStatus(activated_for)
	{
		var cell = '';
		var activated = JSON.parse(activated_for);
		if(activated.hasOwnProperty('deposit'))
		{
			cell = '<span class="label label-success">Active</span>';
		}
		else
		{
		  	cell = '<span class="label label-danger">Inactive</span>';
		}
		return cell;
	}


</script>

@endpush
