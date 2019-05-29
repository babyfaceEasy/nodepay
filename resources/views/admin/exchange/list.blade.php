@extends('admin.layouts.master')

@section('title', 'Currency Exchanges')

@section('head_style')
  <!-- Bootstrap daterangepicker -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/backend/bootstrap/dist/css/daterangepicker.css')}}">
  <!-- dataTables -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/backend/DataTables_latest/DataTables-1.10.18/css/jquery.dataTables.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('public/backend/DataTables_latest/Responsive-2.2.2/css/responsive.dataTables.min.css') }}">

  <!-- jquery-ui-1.12.1 -->
  <link rel="stylesheet" type="text/css" href="{{ asset('public/backend/jquery-ui-1.12.1/jquery-ui.min.css')}}">
@endsection

@section('page_content')
  <div class="box">
      <div class="box-body">
          <form class="form-horizontal" action="{{ url('admin/exchanges') }}" method="GET">

              <input id="startfrom" type="hidden" name="from" value="{{ isset($from) ? $from : '' }}">

              <input id="endto" type="hidden" name="to" value="{{ isset($to) ? $to : '' }}">

              <input id="user_id" type="hidden" name="user_id" value="{{ isset($user) ? $user : '' }}">

              <div class="row">
                  <div class="col-md-12">
                      <div class="row">
                          <!-- Date and time range -->
                          <div class="col-md-3">
                              <label>Date Range</label>
                              <button type="button" class="btn btn-default" id="daterange-btn">
                                  <span id="drp">
                                      <i class="fa fa-calendar"></i>
                                  </span>
                                  <i class="fa fa-caret-down"></i>
                              </button>
                          </div>

                          <!-- Currency -->
                          <div class="col-md-2">
                              <label for="currency">Currency</label>
                              <select class="form-control select2" name="currency" id="currency">
                                  <option value="all" {{ ($currency =='all') ? 'selected' : '' }} >All</option>
                                  @foreach($exchanges_currency as $exchange)
                                      <option value="{{ $exchange->currency_id }}" {{ ($exchange->currency_id == $currency) ? 'selected' : '' }}>
                                          {{ $exchange->currency->code }}
                                      </option>
                                  @endforeach
                              </select>
                          </div>

                          <div class="col-md-2">
                              <label for="status">Status</label>
                              <select class="form-control select2" name="status" id="status">
                                  <option value="all" {{ ($status =='all') ? 'selected' : '' }} >All</option>
                                  @foreach($exchanges_status as $exchange)
                                    <option value="{{ $exchange->status }}" {{ ($exchange->status == $status) ? 'selected' : '' }}>
                                      {{ ($exchange->status == 'Blocked') ? 'Cancelled' : $exchange->status }}
                                    </option>
                                  @endforeach
                              </select>
                          </div>

                          <div class="col-md-2">
                              <label for="user">User</label>
                              <input id="user_input" type="text" name="user" placeholder="Enter Name" class="form-control"
                                  value="{{ empty($user) ?  $user : $getName->first_name.' '.$getName->last_name }}"
                                  {{  isset($getName) && ($getName->id == $user) ? 'selected' : '' }}>
                              <span id="error-user"></span>
                          </div>

                          <div class="col-md-2">
                              <div class="input-group" style="margin-top: 25px;">
                                 <button type="submit" name="btn" class="btn btn-primary btn-flat" id="btn">Filter</button>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </form>
      </div>
  </div>

  <div class="box">
      <div class="box-body">
          <div class="row">
              <div class="col-md-12">
                  <div class="panel panel-info">
                      <div class="panel-heading">
                        <div class="row">
                          <div class="col-md-8">
                              <h3 class="panel-title">All Exchanges</h3>
                          </div>
                          <div class="col-md-4">
                              <div class="btn-group pull-right">
                                  <a href="" class="btn btn-sm btn-default btn-flat" id="csv">CSV</a>&nbsp;&nbsp;
                                  <a href="" class="btn btn-sm btn-default btn-flat" id="pdf">PDF</a>
                              </div>
                          </div>
                        </div>
                      </div>
                      <div class="panel-body">
                        <div class="table-responsive">
                          {{-- <table class="table text-center" id="exchange">
                            <thead>
                              <tr>
                                  <th>Date</th>
                                  <th>User</th>
                                  <th>Amount</th>
                                  <th>Fees</th>
                                  <th>Exchange Rate</th>
                                  <th>Exchange From</th>
                                  <th>Exchange To</th>
                                  <th>Status</th>
                                  @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_exchange'))
                                  <th>Action</th>
                                  @endif
                              </tr>
                            </thead>
                            <tbody>
                              @forelse ($exchanges as $result)
                                <tr>
                                  <td>{{ dateFormat($result->created_at) }}</td>

                                  <td>
                                    @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user'))
                                        <a href="{{url('admin/users/edit/' . $result->user_id)}}">{{ $result->first_name.' '.$result->last_name }}</a>
                                    @else
                                       {{ $result->first_name.' '.$result->last_name }}
                                    @endif
                                  </td>

                                  <td>
                                      @if($result->type == 'Out')
                                        @if ($result->amount > 0)
                                            <span class="text-green">+ {{  moneyFormat($defaultCurrency->symbol, formatNumber($result->amount)) }}</span>
                                        @else
                                            <span class="text-red"> {{  moneyFormat($defaultCurrency->symbol, formatNumber($result->amount)) }} </span>
                                        @endif
                                      @elseif($result->type == 'In')
                                        @if ($result->amount > 0)
                                            <span class="text-green">+ {{  moneyFormat($result->tc_symbol, formatNumber($result->amount)) }} </span>
                                        @else
                                            <span class="text-red"> {{  moneyFormat($result->tc_symbol, formatNumber($result->amount)) }} </span>
                                        @endif
                                      @endif
                                  </td>

                                  <td>{{ ($result->fee == 0) ? '-' : formatNumber($result->fee) }}</td>

                                  <td>{{  moneyFormat($result->tc_symbol, formatNumber($result->exchange_rate)) }}</td>

                                  <td>{{$result->fc_code}}</td>

                                  <td>{{$result->tc_code}}</td>

                                  @if ($result->status == 'Success')
                                      <td><span class="label label-success">Success</span></td>
                                  @elseif ($result->status == 'Pending')
                                      <td><span class="label label-primary">Pending</span></td>
                                  @elseif ($result->status == 'Refund')
                                      <td><span class="label label-warning">Refunded</span></td>
                                  @elseif ($result->status == 'Blocked')
                                      <td><span class="label label-danger">Cancelled</span></td>
                                  @endif

                                  @if(Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_exchange'))
                                  <td>
                                      <a class="btn btn-xs btn-primary" href="{{url('admin/exchange/edit/'.$result->id)}}"><i class="glyphicon glyphicon-edit"></i></a>
                                  </td>
                                  @endif
                                </tr>
                              @empty
                                <h3 class="panel-title text-center">No Exchange Found!</h3>
                              @endforelse
                            </tbody>
                          </table> --}}
                          {!! $dataTable->table(['class' => 'table table-striped table-hover dt-responsive', 'width' => '100%', 'cellspacing' => '0']) !!}
                        </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
@endsection

@push('extra_body_scripts')

<!-- Bootstrap daterangepicker -->
<script src="{{ asset('public/backend/bootstrap-daterangepicker/daterangepicker.js') }}" type="text/javascript"></script>

<!-- jquery.dataTables js -->
<script src="{{ asset('public/backend/DataTables_latest/DataTables-1.10.18/js/jquery.dataTables.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/backend/DataTables_latest/Responsive-2.2.2/js/dataTables.responsive.min.js') }}" type="text/javascript"></script>

<!-- jquery-ui-1.12.1 -->
<script src="{{ asset('public/backend/jquery-ui-1.12.1/jquery-ui.min.js') }}" type="text/javascript"></script>

{!! $dataTable->scripts() !!}

<script type="text/javascript">

  $(".select2").select2({});

  var sDate;
  var eDate;

  //Date range as a button
  $('#daterange-btn').daterangepicker(
    {
      ranges   : {
        'Today'       : [moment(), moment()],
        'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
        'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
        'This Month'  : [moment().startOf('month'), moment().endOf('month')],
        'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
      },
      startDate: moment().subtract(29, 'days'),
      endDate  : moment()
    },
    function (start, end)
    {
      var sessionDate      = '{{Session::get('date_format_type')}}';
      var sessionDateFinal = sessionDate.toUpperCase();

      sDate = moment(start, 'MMMM D, YYYY').format(sessionDateFinal);
      $('#startfrom').val(sDate);

      eDate = moment(end, 'MMMM D, YYYY').format(sessionDateFinal);
      $('#endto').val(eDate);

      $('#daterange-btn span').html('&nbsp;' + sDate + ' - ' + eDate + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
    }
  )

  $(document).ready(function()
  {
      $("#daterange-btn").mouseover(function() {
          $(this).css('background-color', 'white');
          $(this).css('border-color', 'grey !important');
      });

      var startDate = "{!! $from !!}";
      var endDate   = "{!! $to !!}";
      // alert(startDate);
      if (startDate == '') {
          $('#daterange-btn span').html('<i class="fa fa-calendar"></i> &nbsp;&nbsp; Pick a date range &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
      } else {
          $('#daterange-btn span').html(startDate + ' - ' +endDate + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
      }

      $("#user_input").on('keyup keypress', function(e)
      {
          if (e.type=="keyup" || e.type=="keypress")
          {
              var user_input = $('form').find("input[type='text']").val();
              if(user_input.length === 0)
              {
                  $('#user_id').val('');
                  $('#error-user').html('');
                  $('form').find("button[type='submit']").prop('disabled',false);
              }
          }
      });

      $('#user_input').autocomplete(
      {
          source:function(req,res)
          {
              if (req.term.length > 0)
              {
                  $.ajax({
                      url:'{{url('admin/exchanges/user_search')}}',
                      dataType:'json',
                      type:'get',
                      data:{
                          search:req.term
                      },
                      success:function (response)
                      {
                          // console.log(response);
                          // console.log(req.term.length);

                          $('form').find("button[type='submit']").prop('disabled',true);

                          if(response.status == 'success')
                          {
                              res($.map(response.data, function (item)
                              {
                                  return {
                                          user_id : item.user_id, //user_id is defined
                                          first_name : item.first_name, //first_name is defined
                                          last_name : item.last_name, //last_name is defined
                                          value: item.first_name + ' ' + item.last_name //don't change value
                                      }
                                  }
                                  ));
                          }
                          else if(response.status == 'fail')
                          {
                              $('#error-user').addClass('text-danger').html('User Does Not Exist!');
                          }
                      }
                  })
              }
              else
              {
                  // console.log(req.term.length);
                  $('#user_id').val('');
              }
          },
          select: function (event, ui)
          {
              var e = ui.item;

              $('#error-user').html('');

              $('#user_id').val(e.user_id);

              // console.log(e.user_id);

              $('form').find("button[type='submit']").prop('disabled',false);
          },
          minLength: 0,
          autoFocus: true
      });
  });

  // csv
  $(document).ready(function()
  {
      $('#csv').on('click', function(event)
      {
        event.preventDefault();

        var def_curr_code = "{!! $defaultCurrency->code !!}";
        var def_curr_symbol = "{!! $defaultCurrency->symbol !!}";

        var startfrom = $('#startfrom').val();
        var endto = $('#endto').val();

        var status = $('#status').val();

        var currency = $('#currency').val();

        var user_id = $('#user_id').val();

        window.location = SITE_URL+"/admin/exchanges/csv?startfrom="+startfrom
        +"&endto="+endto
        +"&status="+status
        +"&currency="+currency
        +"&def_curr_code="+def_curr_code
        +"&def_curr_symbol="+def_curr_symbol
        +"&user_id="+user_id;
      });
  });

  // pdf
  $(document).ready(function()
  {
      $('#pdf').on('click', function(event)
      {
        event.preventDefault();

        var def_curr_code = "{!! $defaultCurrency->code !!}";
        var def_curr_symbol = "{!! $defaultCurrency->symbol !!}";

        var startfrom = $('#startfrom').val();
        var endto = $('#endto').val();

        var status = $('#status').val();

        var currency = $('#currency').val();

        var user_id = $('#user_id').val();

        window.location = SITE_URL+"/admin/exchanges/pdf?startfrom="+startfrom
        +"&endto="+endto
        +"&status="+status
        +"&currency="+currency
        +"&def_curr_code="+def_curr_code
        +"&def_curr_symbol="+def_curr_symbol
        +"&user_id="+user_id;
      });
  });
</script>

@endpush