@extends('frontend.layouts.app')
@section('content')
    <section class="inner-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Reset Password </h1>
                </div>
            </div>
        </div>
    </section>
    <!--End banner Section-->
    <!--Start Section-->
    <section class="section-01 padding-30">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <!-- form card login -->
                            <div class="card rounded-0">
                                <div class="card-header">
                                    <h3 class="mb-0 text-left">Reset Password</h3>
                                </div>
                                <div class="card-body">
                                    
                                    @include('frontend.layouts.common.alert')
                                    <br>

                                    <form action="{{ url('confirm-password') }}" method="post" id="resetForm">
                                            {{ csrf_field() }}
                                            <input type="hidden" value="{{@$token}}" name="token">

                                        <div class="form-group">
                                            <label for="password">New Password<span class="text-danger">*</span></label>
                                            <input type="password" class="form-control" name="password" id="password">
                                            @if($errors->has('password'))
                                            <span class="error">
                                                {{ $errors->first('password') }}
                                            </span>
                                            @endif
                                        </div>

                                        <div class="form-group">
                                            <label for="inputPassword4">Confirn Password<span class="text-danger">*</span></label>
                                            <input type="password" class="form-control" id="password_confirmation" name="password_confirmation">
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                            <button type="submit" class="btn btn-cust float-right">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!--/card-block-->
                            </div>
                            <!-- /form card login -->
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <!--/col-->
            </div>
            <!--/row-->
        </div>
    </section>
@endsection
@section('js')
<script>
// jQuery.validator.setDefaults({
//   debug: true,
//   success: "valid"
// });


$('#resetForm').validate({
    rules: {
        password: {
            required: true,
            minlength: 6,
        },
        password_confirmation: {
            required: true,
            minlength: 6,
            equalTo: "#password"
        }
    },
    messages: {
        password_confirmation: {
            equalTo: "Please enter same value as the password field!",
        }
    }
    
});
</script>
@endsection