<?php

namespace App\DataTables\Admin;

use App\Http\Helpers\Common;
use App\Models\Transaction;
use App\Models\TransactionType;
use Illuminate\Support\Str;
use Yajra\DataTables\Services\DataTable;

class TransactionsDataTable extends DataTable
{

    public function ajax()
    {
        $columns = $_GET['columns'];
        return datatables()
            ->eloquent($this->query())
            ->editColumn('created_at', function ($transaction)
            {
                return dateFormat($transaction->created_at);
            })
            ->addColumn('sender', function ($transaction)
            {

                $senderWithLink = '-';
                if ($transaction->transaction_type->name == 'Deposit')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Transferred')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Received')//end_user
                {
                    $sender = isset($transaction->end_user) ? $transaction->end_user->first_name . ' ' . $transaction->end_user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->end_user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Bank_Transfer')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Exchange_From')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Exchange_To')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                // elseif ($transaction->transaction_type->name == 'Voucher_Created')
                // {
                //     $sender = isset($transaction->voucher->user) ? $transaction->voucher->user->first_name . ' ' . $transaction->voucher->user->last_name : "-";
                //     $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->voucher->user->id) . '">'.$sender.'</a>' : $sender;
                // }
                // elseif ($transaction->transaction_type->name == 'Voucher_Activated')
                // {
                //     $sender = isset($transaction->voucher->user) ? $transaction->voucher->user->first_name . ' ' . $transaction->voucher->user->last_name : "-";
                //     $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->voucher->user->id) . '">'.$sender.'</a>' : $sender;
                // }
                elseif ($transaction->transaction_type->name == 'Request_From')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Request_To')//end_user
                {
                    $sender = isset($transaction->end_user) ? $transaction->end_user->first_name . ' ' . $transaction->end_user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->end_user->id) . '">'.$sender.'</a>' : $sender;

                }
                elseif ($transaction->transaction_type->name == 'Withdrawal')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Payment_Sent')
                {
                    $sender = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$sender.'</a>' : $sender;
                }
                elseif ($transaction->transaction_type->name == 'Payment_Received')
                {
                    if (isset($transaction->end_user))
                    {
                        $sender = $transaction->end_user->first_name.' '.$transaction->end_user->last_name;
                        $senderWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->end_user->id) . '">'.$sender.'</a>' : $sender;
                    }
                    else
                    {
                        $sender = '-';
                    }
                }
                return $senderWithLink;
            })
           ->addColumn('receiver', function ($transaction)
            {

                $receiverWithLink = '-';
                if ($transaction->transaction_type->name == 'Deposit')
                {
                    $receiver = '-';
                }
                elseif ($transaction->transaction_type->name == 'Transferred')
                {
                    if (isset($transaction->end_user))
                    {
                        $receiver = $transaction->end_user->first_name.' '.$transaction->end_user->last_name;
                        $receiverWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->end_user->id) . '">'.$receiver.'</a>' : $receiver;
                    }
                    else
                    {
                        if (!empty($transaction->transfer->email))
                        {
                            $receiver = $transaction->transfer->email;
                            $receiverWithLink = $receiver;
                        }
                        else
                        {
                            $receiver = '-';
                            $receiverWithLink = $receiver;
                        }
                    }
                }
                elseif ($transaction->transaction_type->name == 'Received')
                {
                    if (isset($transaction->user))
                    {
                        $receiver = $transaction->user->first_name.' '.$transaction->user->last_name;
                        $receiverWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$receiver.'</a>' : $receiver;
                    }
                    else
                    {
                        if (!empty($transaction->transfer->email))
                        {
                            $receiver = $transaction->transfer->email;
                            $receiverWithLink = $receiver;
                        }
                        else
                        {
                            $receiver = '-';
                            $receiverWithLink = $receiver;
                        }
                    }
                }
                elseif ($transaction->transaction_type->name == 'Exchange_From')
                {
                    $receiver = '-';
                }
                elseif ($transaction->transaction_type->name == 'Exchange_To')
                {
                    $receiver = '-';
                }
                elseif ($transaction->transaction_type->name == 'Voucher_Created')
                {
                    $receiver = '-';
                }
                // elseif ($transaction->transaction_type->name == 'Voucher_Activated')
                // {
                //     $receiver = isset($transaction->voucher->activator) ? $transaction->voucher->activator->first_name . ' ' . $transaction->voucher->activator->last_name : "-";
                //     $receiverWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->voucher->activator->id) . '">'.$receiver.'</a>' : $receiver;
                // }
                elseif ($transaction->transaction_type->name == 'Request_From')
                {
                    if (isset($transaction->end_user))
                    {
                        $receiver = $transaction->end_user->first_name.' '.$transaction->end_user->last_name;
                        $receiverWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->end_user->id) . '">'.$receiver.'</a>' : $receiver;
                    }
                    else
                    {
                        $receiver = $transaction->request_payment->email;
                        $receiverWithLink = $receiver;
                    }
                }
                elseif ($transaction->transaction_type->name == 'Request_To')
                {
                    if (isset($transaction->user))
                    {
                        $receiver = $transaction->user->first_name.' '.$transaction->user->last_name;
                        $receiverWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$receiver.'</a>' : $receiver;
                    }
                    else
                    {
                        $receiver = $transaction->request_payment->email;
                        $receiverWithLink = $receiver;
                    }
                }
                elseif ($transaction->transaction_type->name == 'Withdrawal')
                {
                    $receiver = '-';
                }
                elseif ($transaction->transaction_type->name == 'Payment_Sent')
                {
                    $receiver = isset($transaction->end_user) ? $transaction->end_user->first_name . ' ' . $transaction->end_user->last_name : "-";
                    $receiverWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->end_user->id) . '">'.$receiver.'</a>' : $receiver;
                }
                elseif ($transaction->transaction_type->name == 'Payment_Received')
                {
                    $receiver = isset($transaction->user) ? $transaction->user->first_name . ' ' . $transaction->user->last_name : "-";
                    $receiverWithLink = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_user')) ? '<a href="' . url('admin/users/edit/' . $transaction->user->id) . '">'.$receiver.'</a>' : $receiver;
                }
                return $receiverWithLink;
            })
            ->editColumn('transaction_type_id', function ($transaction)
            {
                /*dd($_GET['search']['value']);
                $type = strtolower($_GET['search']['value']);
                echo $type;
                if($type=='payout'){
                    $transaction->transaction_type->name = 'Withdrawal';
                    echo $transaction->transaction_type->name;exit();
                    return ($transaction->transaction_type->name == "Withdrawal") ? "Payout" : str_replace('_', ' ', $transaction->transaction_type->name);
                }else{
                    return ($transaction->transaction_type->name == "Withdrawal") ? "Payout" : str_replace('_', ' ', $transaction->transaction_type->name);
                }*/
                return ($transaction->transaction_type->name == "Withdrawal") ? "Payout" : str_replace('_', ' ', $transaction->transaction_type->name);
            })
            /*->filter(function ($query)
            {
                $typeText     = $_GET['search']['value'];
                if ($typeText == 'payout')
                {
                        $query->where('transactions.transaction_type_id', '=', 2);
                }
                else
                {
                    $transaction_type = TransactionType::where(['name' => $typeText])->first();
                    if(!empty($transaction_type->id))
                    {
                        $query->where('transactions.transaction_type_id', '=', $transaction_type->id);
                    }
                    else
                    {
                          $from     = null;
                          $to       = null;
                          $status   = 'all';
                          $currency = 'all';
                          $type     = 'all';
                          $user     = null;
                          $query = (new Transaction())->getTransactionsList($from, $to, $status, $currency, $type, $user);
                    }
                }
            })
            ->filterColumn('transaction_type_id', function($query)
            {
                $typeText = strtolower($_GET['search']['value']);
                dd($typeText);

                if ($typeText == 'payout')
                {
                    $query->where('transactions.transaction_type_id', '=', 2);
                }
                else
                {
                    $transaction_type = TransactionType::where(['name' => $typeText])->first();
                    if(!empty($transaction_type->id))
                    {
                        $query->where('transactions.transaction_type_id', '=', $transaction_type->id);
                    }
                    else
                    {
                        $from     = null;
                        $to       = null;
                        $status   = 'all';
                        $currency = 'all';
                        $type     = 'all';
                        $user     = null;
                        $query = (new Transaction())->getTransactionsList($from, $to, $status, $currency, $type, $user);
                    }
                }
            })
            */
            ->editColumn('subtotal', function ($transaction)
            {
                return formatNumber($transaction->subtotal);
            })
            ->addColumn('fees', function ($transaction)
            {
                return ($transaction->charge_percentage == 0) && ($transaction->charge_fixed == 0) ? '-' : formatNumber($transaction->charge_percentage + $transaction->charge_fixed);
            })
            ->editColumn('total', function ($transaction)
            {
                if ($transaction->total > 0)
                {
                    $total = '<td><span class="text-green">+' . formatNumber($transaction->total) . '</span></td>';
                }
                else
                {
                    $total = '<td><span class="text-red">' . formatNumber($transaction->total) . '</span></td>';
                }
                return $total;
            })
            ->editColumn('currency_id', function ($transaction)
            {
                return $transaction->currency->code;
            })
            ->editColumn('status', function ($transaction)
            {
                if ($transaction->status == 'Success')
                {
                    $status = '<span class="label label-success">Success</span>';
                }
                elseif ($transaction->status == 'Pending')
                {
                    $status = '<span class="label label-primary">Pending</span>';
                }
                elseif ($transaction->status == 'Refund')
                {
                    $status = '<span class="label label-warning">Refunded</span>';
                }
                elseif ($transaction->status == 'Blocked')
                {
                    $status = '<span class="label label-danger">Cancelled</span>';
                }
                return $status;
            })
            ->addColumn('action', function ($transaction)
            {
                $edit = '';
                $edit = (Common::has_permission(\Auth::guard('admin')->user()->id, 'edit_transaction')) ?
                '<a href="' . url('admin/transactions/edit/' . $transaction->id) . '" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i></a>&nbsp;' : '';
                return $edit;
            })
            ->rawColumns(['sender','receiver','total', 'status', 'action'])
            ->make(true);
    }

    public function query()
    {
        // dd($_GET['search']['value']);
        if (isset($_GET['btn']))
        {
            $status   = $_GET['status'];
            $currency = $_GET['currency'];
            $type     = $_GET['type'];
            $user     = $_GET['user_id'];

            if (empty($_GET['from']))
            {
                $from  = null;
                $to    = null;
                $query = (new Transaction())->getTransactionsList($from, $to, $status, $currency, $type, $user);
            }
            else
            {
                $from         = setDateForDb($_GET['from']);
                $to           = setDateForDb($_GET['to']);
                $query = (new Transaction())->getTransactionsList($from, $to, $status, $currency, $type, $user);
            }
        }
        else
        {
            $from     = null;
            $to       = null;
            $status   = 'all';
            $currency = 'all';
            $user     = null;

            /*$typeText     = strtolower($_GET['search']['value']);
            if ($typeText == 'payout')
            {
                $transaction_type = TransactionType::where(['name' => 'Withdrawal'])->first(['id']);
                $type     = $transaction_type->id;
            }
            else
            {
                $type     = 'all';
            }
            */
            $type     = 'all';
            $query = (new Transaction())->getTransactionsList($from, $to, $status, $currency, $type, $user);

        }
        return $this->applyScopes($query);
    }

    public function html()
    {
        return $this->builder()
            ->addColumn(['data' => 'id', 'name' => 'transactions.id', 'title' => 'ID', 'searchable' => false, 'visible' => false])

            ->addColumn(['data' => 'uuid', 'name' => 'transactions.uuid', 'title' => 'UUID', 'visible' => false])

            ->addColumn(['data' => 'created_at', 'name' => 'transactions.created_at', 'title' => 'Date'])

            //sender
            ->addColumn(['data' => 'sender', 'name' => 'user.last_name', 'title' => 'User', 'visible' => false])//relation
            ->addColumn(['data' => 'sender', 'name' => 'user.first_name', 'title' => 'User'])//relation

            //transaction_type
            ->addColumn(['data' => 'transaction_type_id', 'name' => 'transaction_type.name', 'title' => 'Type'])//relation

            ->addColumn(['data' => 'subtotal', 'name' => 'transactions.subtotal', 'title' => 'Amount'])
            ->addColumn(['data' => 'fees', 'name' => 'fees', 'title' => 'Fees']) //custom
            ->addColumn(['data' => 'total', 'name' => 'transactions.total', 'title' => 'Total'])

            //currency
            ->addColumn(['data' => 'currency_id', 'name' => 'currency.code', 'title' => 'Currency'])//relation

            //receiver
            ->addColumn(['data' => 'receiver', 'name' => 'end_user.last_name', 'title' => 'Receiver', 'visible' => false])//relation
            ->addColumn(['data' => 'receiver', 'name' => 'end_user.first_name', 'title' => 'Receiver'])//relation

            ->addColumn(['data' => 'status', 'name' => 'transactions.status', 'title' => 'Status'])
            ->addColumn(['data' => 'action', 'name' => 'action', 'title' => 'Action', 'orderable' => false, 'searchable' => false])

            ->parameters($this->getBuilderParameters());
    }

}
