<!DOCTYPE html>
<?php

$productinfo = 'Account Deposit';
$surl = url('/deposit/payumoney_success');
$furl = url('/deposit/payumoney_fail');
$service_provider = 'payu_paisa';

$hashSequence = "$key|$txnid|$amount|$productinfo|$firstname|$email|||||||||||$salt";
$hash = hash("sha512", $hashSequence);

if($mode == 'sandbox'){
  $action = "https://test.payu.in/_payment";
}else{
   $action = "https://secure.payu.in/_payment";
}
?>
<html>
<head >
</head>
<body>
<form action="{{ $action }}"  name="payuform" method=POST id="payuform">
<input type="hidden" name="key" value="<?= $key ?>"/>
 <input type="hidden" name="hash" value="<?= $hash ?>"/>
<input type="hidden" name="txnid" value="<?= $txnid ?>"/>
<input type="hidden" name="amount"  value="<?= $amount ?>"/>
<input type="hidden" name="email" id="email" value="<?= $email ?>"/>
<input type="hidden" name="firstname" id="firstname" value="<?= $firstname ?>"/>
<input type="hidden" name="productinfo" value="<?= $productinfo ?>"/>
<input type="hidden" name="surl"  size="64" value="<?= $surl ?>"/>
<input type="hidden" name="furl"  size="64" value="<?= $furl ?>"/>
<input type="hidden" name="service_provider" value="<?= $service_provider ?>"/>
 <input type="submit" value="Click here if you are not redirected automatically"/>
 </form>
<script type="text/javascript">document.getElementById('payuform').submit();</script>
</body>
</html>