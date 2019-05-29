@extends('user_dashboard.layouts.app')
@section('content')
    <section class="section-06 history padding-30">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-xs-12 mb20 marginTopPlus">
                    @include('user_dashboard.layouts.common.alert')
					<div class="right mb10">
					   <a href="{{url('/ticket/add')}}" class="btn btn-cust ticket-btn"><i class="fa fa-ticket"></i>&nbsp; @lang('message.dashboard.button.new-ticket')</a>
					 </div>
					 <div class="clearfix"></div>
                <div class="card">
                    <div class="card-header">
                        <h4>@lang('message.dashboard.ticket.title')</h4>
						  <!--<h4><a href="#"> List</a></h4>-->
                    </div>

                         <div class="table-responsive">
                            @if($tickets->count() > 0)

                            <table class="table recent_activity">
                                <thead>
                                    <tr>
                                    <td class="text-left" width="16%"><strong>@lang('message.dashboard.ticket.ticket-no')</strong></td>
                                    <td class="text-left"><strong>@lang('message.dashboard.ticket.subject')</strong></td>
                                    <td width="15%"><strong>@lang('message.dashboard.ticket.status')</strong></td>
                                    <td width="6%"><strong>@lang('message.dashboard.ticket.priority')</strong></td>
                                    <td width="15%"><strong>@lang('message.dashboard.ticket.date')</strong></td>
                                    <td width="6%"><strong>@lang('message.dashboard.ticket.action')</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($tickets as $result)
                                    <tr>
                                      <td class="text-left">{{ $result->code}} </td>
                                      <td class="text-left"><a href="{{ url('ticket/reply').'/'.$result->id }}">{{ $result->subject}}</a></td>
                                      <td>{{ $result->ticket_status->name}} </td>
                                      <td>{{ $result->priority }} </td>
                                      <td>{{ dateFormat($result->created_at) }} </td>
                                      <td>
                                        <a href="{{ url('ticket/reply').'/'.$result->id }}" class="btn btn-sm btn-secondary">@lang('message.dashboard.button.details')</a>
                                      </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>

                        </div>
                            @else
                              <h5 style="padding: 15px 20px; ">@lang('message.dashboard.ticket.no-ticket')</h5>
                            @endif

                    <div class="card-footer">
                        {{ $tickets->links('vendor.pagination.bootstrap-4') }}
                    </div>
                </div>
            </div>
            </div>
        </div>
</section>
@endsection
@section('js')
<script>

</script>
@endsection
