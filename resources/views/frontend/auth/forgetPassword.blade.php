@extends('frontend.layouts.app')
@section('content')
    <section class="inner-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Forgot Password </h1>
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
                                    <h3 class="mb-0 text-left">Forgot Password</h3>
                                </div>
                                <div class="card-body">
                                    <style>
                                        .error{
                                            font-weight: bold;
                                        }
                                    </style>
                                    @include('frontend.layouts.common.alert')
                                    <br>

                                    <form action="{{ url('forget-password') }}" method="post" id="login_form">
                                            {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Email" name="email" id="email">
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                            <!-- <a href="{{url('register')}}" class="btn btn-cust float-left">Signup</a> -->
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
    $('#login_form').validate({
        rules: {
            email: {
                required: true,
                email: true,
            }
        }
    });
</script>
@endsection