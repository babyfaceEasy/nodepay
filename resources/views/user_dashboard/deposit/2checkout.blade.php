<form id="2checkout" action="https://sandbox.2checkout.com/checkout/spurchase" method="post">
	<input type="hidden" name="sid" value="{{$seller_id}}"/>
	<input type="hidden" name="mode" value="2CO"/>
	<input type="hidden" name="li_0_name" value="Test Product"/>
	<input type="hidden" name="li_0_price" value="{{$amount}}"/>
	<input type="hidden" name="currency_code" value="{{$currency->code}}"/>
	<input type="hidden" name="x_receipt_link_url" value="{{url('deposit/checkout_payment_store')}}"/>
	<input type="submit" value="Click here if you are not redirected automatically" />
</form>

<script type="text/javascript">document.getElementById('2checkout').submit();</script>
