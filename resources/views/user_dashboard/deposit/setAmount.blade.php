@extends('user_dashboard.layouts.app')
@section('content')
<section class="section-06 history padding-30">
	<div class="container">
		<div class="row">
		<div class="col-md-8 mb20 marginTopPlus">
			@include('user_dashboard.layouts.common.alert')
		<div class="card">
			<div class="card-header"><h4 class="float-left">Deposit</h4></div>
			<div class="card-body">
				<div class="row">
					<div class="col-md-12">
						<form action="{{ url('deposit/store') }}" style="display: block;" method="POST" accept-charset='UTF-8' id="deposit_form">
							<input type="hidden" value="{{csrf_token()}}" name="_token" id="token">
							<input type="hidden" value="{{$method}}" name="method" id="method">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label>Amount({{$currency->code}})</label>

										<input class="form-control" name="amount" id="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="0.00" type="text">

										@if($errors->has('amount'))
											<span class="error">
												{{ $errors->first('amount') }}
											</span>
										@endif
									</div>
								</div>
								<div class="col-md-12">
									<a class="btn btn-cust" href="{{ url('deposit') }}">Cancel</a>
									<button class="btn btn-cust" type="submit">Go to Pay</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
</section>

@endsection
@section('js')
<script src="{{asset('public/user_dashboard/js/jquery.validate.min.js')}}" type="text/javascript"></script>
<script src="{{asset('public/user_dashboard/js/additional-methods.min.js')}}" type="text/javascript"></script>
<script>

jQuery.extend(jQuery.validator.messages, {
    required: "{{__('This field is required.')}}",
})

$(document).ready(function() {
	$('#deposit_form').validate({
        rules: {
            amount: {
                required: true,
            },
        },
	});
});
</script>
@endsection