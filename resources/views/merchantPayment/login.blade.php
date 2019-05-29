@extends('frontend.layouts.app')
@section('content')
    <section class="inner-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Login </h1>
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
                                    <h3 class="mb-0 text-left">Sign In</h3>
                                </div>
                                <div class="card-body">

                                    @include('frontend.layouts.common.alert')
                                    <br>

                                    <form action="{{ request()->fullUrl() }}" method="post" id="login_form">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Email" name="email" id="email">
                                        </div>

                                        <div class="form-group">

                                            <label for="password">Password</label>
                                            <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                {!! app('captcha')->display() !!}
                                                <br>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <input class="form-check-input" type="hidden" value="" id="remember_me" name="remember_me">
                                            <div class="col-md-12">
                                                <a href="{{url('register')}}" class="btn btn-cust float-left">Signup</a>
                                                <button type="submit" class="btn btn-cust float-right">Login</button>
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
                },
                password: {
                    required: true
                }
            }
        });
    </script>
@endsection