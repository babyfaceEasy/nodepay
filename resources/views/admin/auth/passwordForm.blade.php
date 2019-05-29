<?php
/**
 * Created By: TechVillage.net
 * Start Date: 22-Jan-2018
 */
?>

        <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="parvez">
    <title>Admin</title>

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="{{ asset('public/backend/bootstrap/dist/css/bootstrap.min.css') }}">

    <!-- Font Awesome
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"> -->

    <link rel="stylesheet" type="text/css" href="{{asset('public/backend/font-awesome-4.7.0/css/font-awesome.min.css')}}">

    <!-- Ionicons
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">-->

    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('public/dist/css/AdminLTE.min.css') }}">

    <!-- iCheck -->
    <link rel="stylesheet" href="{{ asset('public/backend/iCheck/square/blue.css') }}">

</head>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="{{ url('admin/') }}"><b>Pay Money</b></a>
    </div><!-- /.login-logo -->

    <div class="login-box-body">
        <p class="login-box-msg">Admin Forget Password</p>

        <form action="{{ url('admin/confirm-password') }}" method="post">
            {{ csrf_field() }}
            <div class="form-group has-feedback {{ $errors->has('new_password') ? ' has-error' : '' }}">
                <input type="password" class="form-control" placeholder="New Password" name="new_password">
                <input type="hidden" value="{{@$token}}" name="token">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                @if ($errors->has('new_password'))
                    <span class="help-block"><strong>{{ $errors->first('new_password') }}</strong></span>
                @endif
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="Confirm Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>

            <div class="row">
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Submit</button>
                </div>
            </div>

        </form>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="{{ asset('public/backend/jquery/dist/jquery.min.js') }}"></script>
<!-- Bootstrap 3.3.5 -->
<script src="{{ asset('public/backend/bootstrap/dist/js/bootstrap.min.js') }}"></script>

</body>
