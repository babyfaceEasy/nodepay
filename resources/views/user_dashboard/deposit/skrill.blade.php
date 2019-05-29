@extends('users.layouts.dashboard')
@section('title', 'Deposit')
@section('page_content')
<div class="box">
  <div class="box-body">
    <div class="panel panel-default">
      <div class="panel-body">
        <div class="row">
          <div class="col-md-6">
            <form action="https://pay.skrill.com" method="post" target="_blank">
              <input type="hidden" name="pay_to_email" value="demoqco@sun-fish.com">
              <input type="hidden" name="status_url" value="{{url('deposit/skrill_payment_store')}}">
              <input type="hidden" name="language" value="EN">
              <input type="hidden" name="amount" value="1.00">
              <input type="hidden" name="currency" value="USD">
              <input type="hidden" name="detail1_description" value="Deposit">
              <input type="submit" value="Pay!">
          </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
@push('extra_body_scripts')
<script type="text/javascript">

  </script>
  @endpush