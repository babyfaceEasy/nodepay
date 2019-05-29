<!--<section class="section-06 history padding-30">
	<div class="container">
		<div class="row">
		 <div class="col-md-8 mb20 marginTopPlus">
		 	 @include('user_dashboard.layouts.common.alert')
			<div class="card">
				<div class="card-header"><h4 class="float-left">Deposit</h4></div>
				<div class="card-body">
					<form id="depositForm1" action="{{ url('select_method') }}" method="get" accept-charset='UTF-8'>
						<div class="row">
							@if($payment_met)
							<?php
							$i = 1;
							?>
							@foreach($payment_met as $key=>$pm)
							<?php
							$name = $pm->name.'.jpg';
							?>
							@if(!in_array($pm->id,[1,6]))
							<div class="col-md-4">
								<div id="serial_{{$i}}" class="paymentGateway">
									<img data-id="{{$i}}" src='{{asset("public/images/payment_gateway/$name")}}' class="img-responsive" method="{{$pm->id}}">
								</div>
							</div>
							@endif
							<?php
							$i++;
							?>
							@endforeach
							@endif
						</div>
						<div class="row">
							<div class="col-md-12">
								<div style="padding-top: 10px;">
									<a id='seturl' class="btn btn-cust float-right">Next</a>
								</div>
							</div>
						</div>
					</form>
				</div>
				</div>


			</div>
		</div>
	</div>
</section>-->