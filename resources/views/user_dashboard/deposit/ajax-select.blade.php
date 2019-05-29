@if(!empty($fees))
  @foreach($fees as $key => $value)
  	<input class="form-control" placeholder="0.00" name="charge_fixed" type="text" value="{{ $value }}"></input>
  @endforeach
@endif
