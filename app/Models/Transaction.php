<?php

namespace App\Models;

use App\Models\Currency;
use App\Models\Merchant;
use App\Models\MerchantPayment;
use App\Models\PaymentMethod;
use App\Models\User;
use App\Traits\Excludable;
use Auth;
use DB;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use Excludable;

    protected $table = 'transactions';

    protected $fillable = [
        'user_id',
        'end_user_id',
        'currency_id',
        'payment_method_id',
        'merchant_id',
        'bank_id',
        'file_id',
        'uuid',
        'refund_reference',
        'transaction_reference_id',
        'transaction_type_id',
        'user_type',
        'email',
        'phone',
        'subtotal',
        'percentage',
        'charge_percentage',
        'charge_fixed',
        'total',
        'note',
        'status',
    ];

    //eagar loading with Scope query technique
    public function scopeWithAll($query)
    {
        $query->with('user', 'end_user',
            'currency', 'payment_method',
            'merchant', 'deposit',
            'transfer', 'currency_exchange',
            'voucher', 'request_payment',
            'merchant_payment', 'withdrawal',
            'dispute');
    }

    /*
    Start of relationships
     */

    /**
     * [user description]
     * @return [many to one relationship] [Many Transactions belongs to a User]
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function end_user()
    {
        // return $this->belongsTo(User::class, 'end_user_id', 'id');
        return $this->belongsTo(User::class, 'end_user_id');
    }

    /**
     * [currency description]
     * @return [one to one relationship] [Transaction belongs to a Currency]
     */
    public function currency()
    {
        return $this->belongsTo(Currency::class, 'currency_id');
    }

    /**
     * [payment_method description]
     * @return [one to one relationship] [Transaction belongs to a PaymentMethod]
     */
    public function payment_method()
    {
        return $this->belongsTo(PaymentMethod::class, 'payment_method_id');
    }

    public function deposit()
    {
        return $this->belongsTo(Deposit::class, 'transaction_reference_id', 'id');
    }

    public function withdrawal()
    {
        return $this->belongsTo(Withdrawal::class, 'transaction_reference_id', 'id');
    }

    public function transfer()
    {
        return $this->belongsTo(Transfer::class, 'transaction_reference_id', 'id');
    }

    public function currency_exchange()
    {
        return $this->belongsTo(CurrencyExchange::class, 'transaction_reference_id', 'id');
    }

    public function voucher()
    {
        return $this->belongsTo(Voucher::class, 'transaction_reference_id', 'id');
    }

    public function request_payment()
    {
        return $this->belongsTo(RequestPayment::class, 'transaction_reference_id', 'id');
    }

    /**
     * [merchant description]
     * @return [one to one relationship] [Transaction belongs to a merchant]
     */
    public function merchant()
    {
        return $this->belongsTo(Merchant::class, 'merchant_id');
    }

    public function merchant_payment()
    {
        return $this->belongsTo(MerchantPayment::class, 'transaction_reference_id', 'id');
    }

    public function transaction_type()
    {
        return $this->belongsTo(TransactionType::class);
    }

    public function dispute()
    {
        return $this->hasOne(Dispute::class);
    }

    //new
    public function bank()
    {
        return $this->belongsTo(Bank::class, 'bank_id');
    }

    //new
    public function file()
    {
        return $this->belongsTo(File::class, 'file_id');
    }

    /*
    end of relationships
     */

    /**
     * [get users firstname and lastname for filtering]
     * @param  [integer] $user      [id]
     * @return [string]  [firstname and lastname]
     */
    public function getTransactionsUsersName($user)
    {
        return $this->leftJoin('users', 'users.id', '=', 'transactions.user_id')
            ->where(['user_id' => $user])
            ->select('users.first_name', 'users.last_name', 'users.id')
            ->first();
    }

    /**
     * [ajax response for search results]
     * @param  [string] $search   [query string]
     * @return [string] [distinct firstname and lastname]
     */
    public function getTransactionsUsersResponse($search)
    {
        return $this->leftJoin('users', 'users.id', '=', 'transactions.user_id')
            ->where('users.first_name', 'LIKE', '%' . $search . '%')
            ->orWhere('users.last_name', 'LIKE', '%' . $search . '%')
            ->distinct('users.first_name')
            ->select('users.first_name', 'users.last_name', 'transactions.user_id')
            ->get();
    }

    public function getTransactions($from, $to, $type, $wallet, $status)
    {
        // dd($type);
        $conditions = [];

        if (empty($from) || empty($to))
        {
            $date_range = null;
        }
        else if (empty($from))
        {
            $date_range = null;
        }
        else if (empty($to))
        {
            $date_range = null;
        }
        else
        {
            $date_range = 'Available';
        }

        $conditions['transactions.user_id'] = Auth::user()->id;

        $whereInCondition = [Deposit, Withdrawal, Bank_Transfer, Transferred, Received, Exchange_From, Exchange_To, Voucher_Created, Voucher_Activated, Request_From, Request_To, Payment_Sent, Payment_Received];

        if (!empty($type) && $type != 'all')
        {
            //$conditions['transactions.transaction_type_id'] = $type;

            if ($type == Deposit || $type == Withdrawal)
            {
                $whereInCondition = [$type];
            }
            else
            {
                if ($type == 'sent')
                {
                    $whereInCondition = [Transferred, Payment_Sent, Bank_Transfer];
                }
                elseif ($type == 'request')
                {
                    $whereInCondition = [Request_From, Request_To];
                }
                elseif ($type == 'received')
                {
                    $whereInCondition = [Received, Payment_Received];
                }
                elseif ($type == 'exchange')
                {
                    $whereInCondition = [Exchange_From, Exchange_To];
                }
                elseif ($type == 'voucher')
                {
                    $whereInCondition = [Voucher_Created, Voucher_Activated];
                }
            }
        }
        // dd($whereInCondition);

        if (!empty($wallet) && $wallet != 'all')
        {
            $conditions['transactions.currency_id'] = $wallet;
        }

        if (!empty($status) && $status != 'all')
        {
            $conditions['transactions.status'] = $status;
        }

        if (empty($date_range))
        {
            $transaction = Transaction::where($conditions)->whereIn('transactions.transaction_type_id', $whereInCondition)
                ->orderBy('transactions.id', 'desc')->paginate(15);
            // ->get();
            // dd($transaction);
        }
        else
        {
            $from = date('Y-m-d', strtotime($from));
            $to   = date('Y-m-d', strtotime($to));

            $transaction = Transaction::where($conditions)
                ->whereIn('transactions.transaction_type_id', $whereInCondition)
                ->whereDate('transactions.created_at', '>=', $from)
                ->whereDate('transactions.created_at', '<=', $to)
                ->orderBy('transactions.id', 'desc')
                ->paginate(15);
        }
        return $transaction;
    }

    /**
     * [Transactions Filtering Results]
     * @param  [null/date] $from     [start date]
     * @param  [null/date] $to       [end date]
     * @param  [string]    $status   [Status]
     * @param  [string]    $currency [currency]
     * @param  [string]    $type     [type]
     * @param  [null/id]   $user     [User ID]
     * @return [query]     [All Query Results]
     */
    public function getTransactionsList($from, $to, $status, $currency, $type, $user)
    {
        // echo $type;
        // exit();
        // dd($from);
        // dd($type);
        // dd($to);

        $conditions = [];

        //start date conditions
        if (empty($from) || empty($to))
        {
            $date_range = null;
        }
        else if (empty($from))
        {
            $date_range = null;
        }
        else if (empty($to))
        {
            $date_range = null;
        }
        else
        {
            $date_range = 'Available';
        }
        //end date conditions

        if (!empty($status) && $status != 'all')
        {
            $conditions['transactions.status'] = $status;
        }

        if (!empty($currency) && $currency != 'all')
        {
            $conditions['transactions.currency_id'] = $currency;
        }

        if (!empty($type) && $type != 'all')
        {
            //echo $type;exit();
            // $conditions['transactions.transaction_type_id'] = $type;
            $conditions['transaction_type_id'] = $type;
        }

        if (!empty($user))
        {
            $conditions['transactions.user_id'] = $user;
        }

        if (!empty($date_range))
        {
            $transactions = $this->with([
                'user'   => function ($query)
                {
                    $query->select('id', 'first_name', 'last_name');
                },
                'end_user' => function ($query)
                {
                    $query->select('id', 'first_name', 'last_name');
                },
                'transaction_type' => function ($query)
                {
                    $query->select('id', 'name');
                },
                'currency' => function ($query)
                {
                    $query->select('id', 'code', 'symbol');
                },
            ])
            ->where($conditions)
            ->whereDate('transactions.created_at', '>=', $from)
            ->whereDate('transactions.created_at', '<=', $to)
            ->select('transactions.*');
        }
        else
        {
            $transactions = $this->with([
                'user'   => function ($query)
                {
                    $query->select('id', 'first_name', 'last_name');
                },
                'transaction_type' => function ($query)
                {
                    $query->select('id', 'name');
                },
                'currency' => function ($query)
                {
                    $query->select('id', 'code', 'symbol');
                },
                'end_user' => function ($query)
                {
                    $query->select('id', 'first_name', 'last_name');
                },
            ])
            ->where($conditions)
            ->select('transactions.*');
        }
        return $transactions;
    }

    public function getTransactionsListForCsvPDF($from, $to, $status, $currency, $type, $user)
    {
        // dd($from);
        // dd($to);

        $conditions = [];

        //start date conditions
        if (empty($from) || empty($to))
        {
            $date_range = null;
        }
        else if (empty($from))
        {
            $date_range = null;
        }
        else if (empty($to))
        {
            $date_range = null;
        }
        else
        {
            $date_range = 'Available';
        }
        //end date conditions

        if (!empty($status) && $status != 'all')
        {
            $conditions['transactions.status'] = $status;
        }

        if (!empty($currency) && $currency != 'all')
        {
            $conditions['transactions.currency_id'] = $currency;
        }

        if (!empty($type) && $type != 'all')
        {
            $conditions['transactions.transaction_type_id'] = $type;
        }

        if (!empty($user))
        {
            $conditions['transactions.user_id'] = $user;
        }

        if (!empty($date_range))
        {
            $transactions = $this->where($conditions)
                ->whereDate('transactions.created_at', '>=', $from)
                ->whereDate('transactions.created_at', '<=', $to)
                ->orderBy('transactions.id', 'desc')->take(1100)->get(); //mdf problem, so, i have set take(1100)
                                                                     // dd($transactions);
        }
        else
        {
            $transactions = $this->where($conditions)->orderBy('transactions.id', 'desc')->take(1100)->get(); //mdf problem, so, i have set take(1100)
                                                                                                              // dd($transactions);
        }
        return $transactions;
    }

    /**
     * [Revenues]
     * @return [void] [Total Charge of Each Transaction With Separate Currency Data]
     */
    public function getTotalCharge()
    {
        return $this->select('currency_id')
            ->addSelect(\DB::raw('SUM(charge_percentage + charge_fixed) as total_charge'))
            ->groupBy('currency_id')
            ->get();
    }

    public function getRevenuesList($from, $to, $status, $currency, $type)
    {
        $conditions = [];

        if (empty($from) || empty($to))
        {
            $date_range = null;
        }
        else if (empty($from))
        {
            $date_range = null;
        }
        else if (empty($to))
        {
            $date_range = null;
        }
        else
        {
            $date_range = 'Available';
        }

        if (!empty($status) && $status != 'all')
        {
            $conditions['transactions.status'] = $status;
        }

        if (!empty($currency) && $currency != 'all')
        {
            $conditions['transactions.currency_id'] = $currency;
        }

        if (!empty($type) && $type != 'all')
        {
            $conditions['transactions.transaction_type_id'] = $type;
        }

        if (!empty($date_range))
        {
            $revenues = $this->with([
                    'transaction_type' => function ($query)
                    {
                        $query->select('id', 'name');
                    },
                    'currency' => function ($query)
                    {
                        $query->select('id', 'code', 'symbol');
                    },
                ])
                ->where('charge_percentage', '!=', 0)
                ->where('charge_fixed', '!=', 0)
                ->where($conditions)
                ->whereIn('transaction_type_id', [Deposit, Withdrawal, Transferred, Request_To])
                ->whereDate('created_at', '>=', $from)->whereDate('created_at', '<=', $to)
            ->select('transactions.id', 'transactions.created_at', 'transactions.transaction_type_id', 'transactions.charge_percentage', 'transactions.charge_fixed', 'transactions.currency_id', 'transactions.status');
        }
        else
        {
            $revenues = $this->with([
                    'transaction_type' => function ($query)
                    {
                        $query->select('id', 'name');
                    },
                    'currency' => function ($query)
                    {
                        $query->select('id', 'code', 'symbol');
                    },
                ])
                ->where('charge_percentage', '!=', 0)
                ->where('charge_fixed', '!=', 0)
                ->whereIn('transaction_type_id', [Deposit, Withdrawal, Transferred, Request_To])
                ->where($conditions)
            ->select('transactions.id', 'transactions.created_at', 'transactions.transaction_type_id', 'transactions.charge_percentage', 'transactions.charge_fixed', 'transactions.currency_id', 'transactions.status');
        }
        return $revenues;
    }

    public function getRevenuesListForCurrencyInfoAndCsvPdf($from, $to, $status, $currency, $type)
    {
        $conditions = [];

        if (empty($from) || empty($to))
        {
            $date_range = null;
        }
        else if (empty($from))
        {
            $date_range = null;
        }
        else if (empty($to))
        {
            $date_range = null;
        }
        else
        {
            $date_range = 'Available';
        }

        if (!empty($status) && $status != 'all')
        {
            $conditions['transactions.status'] = $status;
        }

        if (!empty($currency) && $currency != 'all')
        {
            $conditions['transactions.currency_id'] = $currency;
        }

        if (!empty($type) && $type != 'all')
        {
            $conditions['transactions.transaction_type_id'] = $type;
        }

        if (!empty($date_range))
        {
            $revenues = $this->where($conditions)
                ->select('transactions.id', 'transactions.created_at', 'transactions.transaction_type_id', 'transactions.charge_percentage', 'transactions.charge_fixed', 'transactions.currency_id', 'transactions.status')
                ->where('charge_percentage', '!=', 0)
                ->where('charge_fixed', '!=', 0)
                ->whereIn('transaction_type_id', [Deposit, Withdrawal, Transferred, Request_To])
                ->whereDate('created_at', '>=', $from)->whereDate('created_at', '<=', $to)
                ->orderBy('transactions.id', 'desc')
                ->get();
        }
        else
        {
            $revenues = $this->where($conditions)
                ->select('transactions.id', 'transactions.created_at', 'transactions.transaction_type_id', 'transactions.charge_percentage', 'transactions.charge_fixed', 'transactions.currency_id', 'transactions.status')
                ->where('charge_percentage', '!=', 0)
                ->where('charge_fixed', '!=', 0)
                ->whereIn('transaction_type_id', [Deposit, Withdrawal, Transferred, Request_To])
                ->orderBy('transactions.id', 'desc')
                ->get();
        }
        return $revenues;
    }

    /**
     *  DASHBOARD FUNCTIONALITIES
     */
    public function dashboardTransactionList()
    {
        $transaction = Transaction::where(['transactions.user_id' => Auth::user()->id])->orderBy('transactions.id', 'desc')->take(10)->get();
        return $transaction;
    }

    public function lastThirtyDaysDeposit()
    {
        $getLastOneMonthDates = getLastOneMonthDates();
        $final                = [];
        $data_map             = array();
        $today                = date('Y-m-d');
        $previousDate         = date("Y-m-d", strtotime("-30 day", strtotime(date('d-m-Y'))));
        $data                 = $this->select(DB::raw('currency_id,SUM(total) as amount,created_at as trans_date,MONTH(created_at) as month,DAY(created_at) as day'))
            ->whereBetween('created_at', [$previousDate, $today])->where(['transaction_type_id' => Deposit, 'status' => 'Success'])
            ->groupBy('currency_id', 'day')->get();
        // $homeCurrency = Setting::where(['name' => 'default_currency', 'type' => 'general'])->select('value')->first();
        // $currencyRate = Currency::where(['id' => $homeCurrency->value])->select('rate')->first();

        $currencies       = getCurrencyIdOfTransaction($data);
        $currencyWithRate = Currency::whereIn('id', $currencies)->get();

        if (!empty($data))
        {
            $data_map = generateAmountBasedOnDfltCurrency($data, $currencyWithRate);
            //dd($data_map);

            $dataArray = [];
            $i         = 0;
            foreach ($getLastOneMonthDates as $key => $value)
            {
                $date                   = explode('-', $value);
                $td                     = (int) $date[0];
                $tm                     = (int) $date[1];
                $dataArray[$i]['day']   = $date[0];
                $dataArray[$i]['month'] = $date[1];
                if (isset($data_map[$td][$tm]))
                {
                    $dataArray[$i]['amount'] = abs($data_map[$td][$tm]);
                }
                else
                {
                    $dataArray[$i]['amount'] = 0;
                }
                $i++;
            }
            foreach ($dataArray as $key => $res)
            {
                $final[$key] = decimalFormat(abs($res['amount']));
                // $final[$key] = moneyFormat($currencyRate->symbol, formatNumber(abs($res['amount'])));
            }
        }
        //dd($final);
        return $final;
    }

    public function lastThirtyDaysWitdrawal()
    {

        $getLastOneMonthDates = getLastOneMonthDates();
        $final                = [];
        $data_map             = [];
        $today                = date('Y-m-d');
        $previousDate         = date("Y-m-d", strtotime("-30 day", strtotime(date('d-m-Y'))));
        $data                 = $this->select(DB::raw('currency_id,SUM(total) as amount,created_at as trans_date,MONTH(created_at) as month,DAY(created_at) as day'))->whereBetween('created_at', [$previousDate, $today])->where(['transaction_type_id' => Withdrawal, 'status' => 'Success'])->groupBy('currency_id', 'day')->get();
        $currencies           = getCurrencyIdOfTransaction($data);
        $currencyWithRate     = Currency::whereIn('id', $currencies)->get();
        if (!empty($data))
        {
            $data_map  = generateAmountBasedOnDfltCurrency($data, $currencyWithRate);
            $dataArray = [];
            $i         = 0;
            foreach ($getLastOneMonthDates as $key => $value)
            {
                $date                   = explode('-', $value);
                $td                     = (int) $date[0];
                $tm                     = (int) $date[1];
                $dataArray[$i]['day']   = $date[0];
                $dataArray[$i]['month'] = $date[1];
                if (isset($data_map[$td][$tm]))
                {
                    $dataArray[$i]['amount'] = abs($data_map[$td][$tm]);
                }
                else
                {
                    $dataArray[$i]['amount'] = 0;
                }
                $i++;
            }
            foreach ($dataArray as $key => $res)
            {
                $final[$key] = decimalFormat(abs($res['amount']));
            }
        }
        return $final;
    }

    public function lastThirtyDaysTransfer()
    {

        $getLastOneMonthDates = getLastOneMonthDates();
        $final                = [];
        $today                = date('Y-m-d');
        $previousDate         = date("Y-m-d", strtotime("-30 day", strtotime(date('d-m-Y'))));
        $data                 = $this->select(DB::raw('currency_id,SUM(subtotal) as amount,created_at as trans_date,MONTH(created_at) as month,DAY(created_at) as day'))->whereBetween('created_at', [$previousDate, $today])->where(['transaction_type_id' => Transferred, 'status' => 'Success'])->groupBy('currency_id', 'day')->get();
        $currencies           = getCurrencyIdOfTransaction($data);
        $currencyWithRate     = Currency::whereIn('id', $currencies)->get();

        if (!empty($data))
        {
            $data_map  = generateAmountBasedOnDfltCurrency($data, $currencyWithRate);
            $dataArray = [];
            $i         = 0;
            foreach ($getLastOneMonthDates as $key => $value)
            {
                $date                   = explode('-', $value);
                $td                     = (int) $date[0];
                $tm                     = (int) $date[1];
                $dataArray[$i]['day']   = $date[0];
                $dataArray[$i]['month'] = $date[1];
                if (isset($data_map[$td][$tm]))
                {
                    $dataArray[$i]['amount'] = abs($data_map[$td][$tm]);
                }
                else
                {
                    $dataArray[$i]['amount'] = 0;
                }
                $i++;
            }
            foreach ($dataArray as $key => $res)
            {
                $final[$key] = decimalFormat(abs($res['amount']));

            }
        }
        return $final;
    }

    public function totalRevenue($from, $to)
    {
        $data = $this->select(DB::raw('currency_id,SUM(charge_percentage + charge_fixed) as total_charge,MONTH(created_at) as month,DAY(created_at) as day'))
            ->whereBetween('created_at', [$from, $to])->whereIn('transaction_type_id', [Deposit, Withdrawal, Transferred])->groupBy('currency_id', 'day')->get();

        $currencies       = getCurrencyIdOfTransaction($data);
        $currencyWithRate = Currency::whereIn('id', $currencies)->get();
        $final            = 0;
        if (!empty($data))
        {
            $final = generateAmountForTotal($data, $currencyWithRate);
        }
        return $final;
    }

    public function totalDeposit($from, $to)
    {
        $data = $this->select(DB::raw('currency_id,SUM(charge_percentage + charge_fixed) as total_charge,
                                              MONTH(created_at) as month,
                                              DAY(created_at) as day'))->whereBetween('created_at', [$from, $to])->where('transaction_type_id', Deposit)->groupBy('currency_id', 'day')->get();

        $currencies       = getCurrencyIdOfTransaction($data);
        $currencyWithRate = Currency::whereIn('id', $currencies)->get();
        $final = 0;
        if (!empty($data))
        {
            $final = generateAmountForTotal($data, $currencyWithRate);
        }
        return $final;
    }

    public function totalWithdrawal($from, $to)
    {
        $data = $this->select(DB::raw('currency_id,SUM(charge_percentage + charge_fixed) as total_charge,MONTH(created_at) as month,DAY(created_at) as day'))->whereBetween('created_at', [$from, $to])->where('transaction_type_id', Withdrawal)->groupBy('currency_id', 'day')->get();

        $currencies       = getCurrencyIdOfTransaction($data);
        $currencyWithRate = Currency::whereIn('id', $currencies)->get();
        $final            = 0;
        if (!empty($data))
        {
            $final = generateAmountForTotal($data, $currencyWithRate);
        }
        return $final;
    }

    public function totalTransfer($from, $to)
    {
        $data             = $this->select(DB::raw('currency_id,SUM(charge_percentage + charge_fixed) as total_charge,MONTH(created_at) as month,DAY(created_at) as day'))->whereBetween('created_at', [$from, $to])->where('transaction_type_id', Transferred)->groupBy('currency_id', 'day')->get();
        $currencies       = getCurrencyIdOfTransaction($data);
        $currencyWithRate = Currency::whereIn('id', $currencies)->get();
        $final            = 0;
        if (!empty($data))
        {
            $final = generateAmountForTotal($data, $currencyWithRate);
        }
        return $final;

    }

    //Query for Mobile Application

   /*public function getTransactionLists($type,$user_id)
    {
        // dd($type);
        // dd('in model');
        $conditions = [];

        if (empty($from) || empty($to)) {
            $date_range = null;
        } else if (empty($from)) {
            $date_range = null;
        } else if (empty($to)) {
            $date_range = null;
        } else {
            $date_range = 'Available';
        }

        $conditions['transactions.user_id'] = $user_id;

        $whereInCondition = [Deposit, Withdrawal, Transferred, Received, Exchange_From, Exchange_To, Voucher_Created, Voucher_Activated, Request_From, Request_To, Payment_Sent, Payment_Received];

        if (!empty($type) && $type != 'all') {
            //$conditions['transactions.transaction_type_id'] = $type;

            if ($type == Deposit || $type == Withdrawal) {
                $whereInCondition = [$type];
            } else {
                if ($type == 'sent') {
                    $whereInCondition = [Transferred, Payment_Sent];
                } elseif ($type == 'request') {
                    $whereInCondition = [Request_From, Request_To];
                } elseif ($type == 'received') {
                    $whereInCondition = [Received, Payment_Received];
                } elseif ($type == 'exchange') {
                    // dd('sss');
                    $whereInCondition = [Exchange_From, Exchange_To];
                } elseif ($type == 'voucher') {
                    $whereInCondition = [Voucher_Created, Voucher_Activated];
                }
            }
        }
        // dd($whereInCondition);

        if (!empty($wallet) && $wallet != 'all') {
            $conditions['transactions.currency_id'] = $wallet;
        }

        if (!empty($status) && $status != 'all') {
            $conditions['transactions.status'] = $status;
        }

        if (empty($date_range)) {
            // dd('zz');

            $transaction = Transaction::where($conditions)->whereIn('transactions.transaction_type_id', $whereInCondition)
                ->orderBy('transactions.id', 'desc')->paginate(15);
            // ->get();
            // dd($transaction);
        } else {
            $from = date('Y-m-d', strtotime($from));
            $to = date('Y-m-d', strtotime($to));

            $transaction = Transaction::where($conditions)
                ->whereIn('transactions.transaction_type_id', $whereInCondition)
                ->whereDate('transactions.created_at', '>=', $from)
                ->whereDate('transactions.created_at', '<=', $to)
                ->orderBy('transactions.id', 'desc')
                ->paginate(15);
        }
        d($transaction,1);
        return $transaction;
    }*/
    public function getTransactionLists($type, $user_id)
    {

        $conditions = ['transactions.user_id' => $user_id];
        if ($type == 'all') {

            $transaction = Transaction::join('currencies', function ($join) {
                $join->on('currencies.id', '=', 'transactions.currency_id');
            })
                ->join('users', function ($join) {
                    $join->on('users.id', '=', 'transactions.user_id');
                    //$join->on('users.id', '=', 'transactions.end_user_id');
                })
                ->leftJoin('payment_methods', function ($join) {
                    $join->on('payment_methods.id', '=', 'transactions.payment_method_id');
                })
                ->leftJoin('transaction_types', function ($join) {
                    $join->on('transaction_types.id', '=', 'transactions.transaction_type_id');
                })
                ->where($conditions)
                ->whereIn('transactions.transaction_type_id', [Deposit, Transferred, Received, Withdrawal, Voucher_Created, Voucher_Activated, Exchange_From, Exchange_To, Request_From, Request_To, Payment_Sent, Payment_Received])
                ->orderBy('transactions.id', 'desc')
                ->select([
                    'transactions.id as id',

                    'users.id as user_id',
                    'users.first_name as f_name',

                    'users.last_name as l_name',
                    'users.picture as photo',

                    'payment_methods.name as payment_method_name',

                    'transactions.user_id as user_id',

                    'transactions.end_user_id as end_user_id',

                    'transactions.transaction_type_id as type',

                    'transactions.subtotal as subtotal',

                    'transactions.charge_percentage as charge_percentage',

                    'transactions.charge_fixed as charge_fixed',

                    'transactions.total as total',

                    'transactions.status as status',
                    'transactions.merchant_id as merchant_id',

                    'transactions.created_at as t_created_at',

                    'currencies.code as curr_code',

                    'currencies.symbol as curr_symbol',
                    'transaction_types.name as transaction_type',
                ])->get();
        }
        //d($transaction,1);
        //return $transaction;
        $transactions = [];
        for ($i = 0; $i < count($transaction); $i++) {
            $transactions[$i]['id'] = $transaction[$i]->id;
            if($transaction[$i]->end_user_id){
                $transactions[$i]['user_id'] = $transaction[$i]->end_user_id;
                $transactions[$i]['f_name']  = $transaction[$i]->end_user->first_name;
                $transactions[$i]['l_name']  = $transaction[$i]->end_user->last_name;
                $transactions[$i]['photo']   = $transaction[$i]->end_user->picture;
            }else{
                $transactions[$i]['user_id'] = $transaction[$i]->user_id;
                $transactions[$i]['f_name']  = $transaction[$i]->user->first_name;
                $transactions[$i]['l_name']  = $transaction[$i]->user->last_name;
                $transactions[$i]['photo']   = $transaction[$i]->user->picture;
            }
            $transactions[$i]['transaction_type_id'] = $transaction[$i]->type;
            $transactions[$i]['transaction_type']    = $transaction[$i]->transaction_type;
            $transactions[$i]['charge_percentage']   = $transaction[$i]->charge_percentage;
            $transactions[$i]['charge_fixed']        = $transaction[$i]->charge_fixed;
            $transactions[$i]['subtotal']            = $transaction[$i]->subtotal;
            $transactions[$i]['total']               = $transaction[$i]->total;
            $transactions[$i]['status']              = $transaction[$i]->status;
            $transactions[$i]['t_created_at']        = $transaction[$i]->t_created_at;
            $transactions[$i]['curr_code']           = $transaction[$i]->curr_code;
            $transactions[$i]['curr_symbol']         = $transaction[$i]->curr_symbol;
            $transactions[$i]['payment_method_name'] = $transaction[$i]->payment_method_name;
            if($transaction[$i]->merchant_id){
              $transactions[$i]['merchant_id']       = $transaction[$i]->merchant_id;
              $transactions[$i]['merchant_name']     = $transaction[$i]->merchant->business_name;
              $transactions[$i]['logo']              = $transaction[$i]->merchant->logo;
            }
        }
        //d($transactions,1);

        return $transactions;
        //d($transactions );
    }


    public function getTransactionDetails($tr_id, $user_id)
    {

        //echo $user_id;exit();
        $conditions = ['transactions.id' => $tr_id, 'transactions.user_id' => $user_id];

        $transaction = Transaction::join('currencies', function ($join) {
            $join->on('currencies.id', '=', 'transactions.currency_id');
        })
            ->join('users', function ($join) {
                $join->on('users.id', '=', 'transactions.user_id');
                //$join->on('users.id', '=', 'transactions.end_user_id');
            })
            ->leftJoin('payment_methods', function ($join) {
                $join->on('payment_methods.id', '=', 'transactions.payment_method_id');
            })
            ->leftJoin('transaction_types', function ($join) {
                $join->on('transaction_types.id', '=', 'transactions.transaction_type_id');
            })
            ->where($conditions)
            ->whereIn('transactions.transaction_type_id', [Deposit, Transferred, Received, Withdrawal, Voucher_Created, Voucher_Activated, Request_From, Request_To, Payment_Sent, Payment_Received, Exchange_From, Exchange_To])
            ->orderBy('transactions.id', 'desc')
            ->select([
                'transactions.id as id',

                'users.id as user_id',
                'users.first_name as f_name',

                'users.last_name as l_name',

                'payment_methods.name as payment_method_name',

                'transactions.user_id as user_id',
                'transactions.end_user_id as end_user_id',
                'transactions.transaction_type_id as type_id',
                'transactions.transaction_reference_id as transaction_reference_id',

                'transactions.subtotal as subtotal',

                'transactions.charge_percentage as charge_percentage',

                'transactions.charge_fixed as charge_fixed',

                'transactions.total as total',
                'transactions.uuid as transaction_id',

                'transactions.status as status',
                'transactions.note as description',

                'transactions.created_at as t_created_at',
                'transactions.merchant_id as merchant_id',

                'currencies.code as curr_code',

                'currencies.symbol as curr_symbol',
                'transaction_types.name as type',
            ])->first();
            //d($transaction,1);
        if (@$transaction->end_user_id) {
            $transaction->f_name = $transaction->end_user->first_name;
            $transaction->l_name = $transaction->end_user->last_name;
        }
        if(@$transaction->merchant_id){
            $transaction->merchant_name = $transaction->merchant->business_name;
        }
        //d($transaction,1);
        return $transaction;
    }

}
