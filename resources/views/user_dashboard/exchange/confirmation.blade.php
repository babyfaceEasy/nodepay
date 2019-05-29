@extends('user_dashboard.layouts.app')

@section('content')

<section class="section-06 history padding-30">
	<div class="container">
		<div class="row">
			<div class="col-md-7 col-xs-12 mb20 marginTopPlus">
				<div class="card">
					<div class="card-header">
						<h4>@lang('message.dashboard.exchange.confirm.title')</h4>
					</div>
					<div class="wap-wed mt20 mb20">
						<p class="mb20">@lang('message.dashboard.exchange.confirm.exchanging') <strong>{{ $fromCurrency->code }}</strong>
							@lang('message.dashboard.exchange.confirm.of') <strong>{{ isset($transInfo['defaultAmnt']) ? formatNumber($transInfo['defaultAmnt']) : 0.00 }}</strong>
							@lang('message.dashboard.exchange.confirm.equivalent-to') <strong>{{ isset($transInfo['finalAmount']) ? formatNumber($transInfo['finalAmount']) : 0.00 }} {{ $transInfo['currCode'] }}</strong><br/>@lang('message.dashboard.exchange.confirm.exchange-rate'):  &nbsp;<strong>1 {{ $fromCurrency->code }} </strong>= {{ formatNumber($transInfo['dCurrencyRate']) }} {{ $transInfo['currCode'] }}</p>

						<div class="h5"><strong>@lang('message.dashboard.confirmation.details')</strong></div>
						<div class="confn-border">
							<div class="row mt20">
								<div class="col-md-6">@lang('message.dashboard.exchange.confirm.amount')</div>
								<div class="col-md-6 text-right"><strong>{{  moneyFormat($fromCurrency->symbol, isset($transInfo['defaultAmnt']) ? formatNumber($transInfo['defaultAmnt']) : 0.00) }}</strong></div>
							</div>

							<div class="row mt10">
								<div class="col-md-6">@lang('message.dashboard.confirmation.fee')</div>
								<div class="col-md-6 text-right"><strong>{{  moneyFormat($fromCurrency->symbol, isset($transInfo['fee']) ? formatNumber($transInfo['fee']) : 0.00) }}</strong></div>
							</div>
							<hr />
							<div class="row">
								<div class="col-md-6 h6"><strong>@lang('message.dashboard.confirmation.total')</strong></div>
								<div class="col-md-6 text-right"><strong>{{  moneyFormat($fromCurrency->symbol, isset($transInfo['totalAmount']) ? formatNumber($transInfo['totalAmount']) : 0.00) }}</strong></div>
							</div>
						</div>
					</div>

					<div class="card-footer">
						<div class="text-center">
							<a onclick="exchangeBack()" href="#" class="btn btn-cust float-left">
								<strong><i class="fa fa-angle-left"></i>&nbsp;&nbsp;@lang('message.dashboard.button.back')</strong>
							</a>
							<a href="{{url('exchange-of-money-success')}}" class="btn btn-cust float-right">
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

<script type="text/javascript">
	//done by tuhin vai
	function exchangeBack()
	{
		localStorage.setItem("previousUrl",document.URL);
		window.history.back();
	}
</script>

@endsection