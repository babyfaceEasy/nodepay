<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Helpers\Common;
use App\Models\Currency;
use App\Models\FeesLimit;
use App\Models\TransactionType;
use Illuminate\Http\Request;

class FeesLimitController extends Controller
{
    protected $helper;
    public function __construct()
    {
        $this->helper = new Common();
    }

    public function limitList($tab, $id)
    {
        $data['menu']      = 'currency';
        $data['list_menu'] = $tab;

        $data['currency'] = $currency = Currency::where(['id' => $id])->first();
        // dd($currency);

        if ($tab == 'transfer')
        {
            $tab = 'Transferred';
        }
        elseif ($tab == 'exchange')
        {
            $tab = 'Exchange_From';
        }
        elseif ($tab == 'voucher')
        {
            $tab = 'Voucher_Activated';
        }
        elseif ($tab == 'request_payment')
        {
            $tab = 'Request_To';
        }
        // elseif ($tab == 'bank_transfer')
        // {
        //     $tab = 'Bank_Transfer';
        // }
        $transaction_type = TransactionType::where(['name' => ucfirst($tab)])->first();

        $data['transaction_type'] = $transaction_type->id;

        $data['currencyList'] = Currency::where(['status' => 'Active'])->get();

        $data['feeslimit'] = $feeslimit = FeesLimit::where(['transaction_type_id' => $transaction_type->id, 'currency_id' => $id])->first();

        return view('admin.feeslimits.deposit_limit', $data);
    }

    public function updateDepositLimit(Request $request)
    {
        // dd($request->all());

        $feeslimit = FeesLimit::where(['transaction_type_id' => $request->transaction_type, 'currency_id' => $request->currency_id])->first();
        //d($feeslimit,1);

        if (empty($feeslimit))
        {
            // dd('empty');
            $feeslimit                      = new FeesLimit();
            $feeslimit->currency_id         = $request->currency_id;
            $feeslimit->transaction_type_id = $request->transaction_type;
            $feeslimit->charge_percentage   = $request->charge_percentage;
            $feeslimit->charge_fixed        = $request->charge_fixed;
            $feeslimit->min_limit           = ($request->min_limit == null) ? 1 : $request->min_limit;
            $feeslimit->max_limit           = $request->max_limit;

            if ($request->tabText == 'bank_transfer')
            {
                $feeslimit->processing_time = $request->processing_time;
            }

            if ($request->defaultCurrency)
            {
                $feeslimit->has_transaction = 'Yes';
            }
            else
            {
                $feeslimit->has_transaction = isset($request->has_transaction) ? $request->has_transaction : 'No';
            }
            $feeslimit->save();
        }
        else
        {
            // dd($request->all());
            $feeslimit                      = FeesLimit::find($request->id);
            $feeslimit->currency_id         = $request->currency_id;
            $feeslimit->transaction_type_id = $request->transaction_type;
            $feeslimit->charge_percentage   = $request->charge_percentage;
            $feeslimit->charge_fixed        = $request->charge_fixed;
            $feeslimit->min_limit           = ($request->min_limit == null) ? 1 : $request->min_limit;
            $feeslimit->max_limit           = $request->max_limit;

            if ($request->tabText == 'bank_transfer')
            {
                $feeslimit->processing_time = $request->processing_time;
            }

            if ($request->defaultCurrency)
            {
                $feeslimit->has_transaction = 'Yes';
            }
            else
            {
                $feeslimit->has_transaction = isset($request->has_transaction) ? $request->has_transaction : 'No';
            }
            $feeslimit->save();
        }
        $this->helper->one_time_message('success', 'Currency Settings Updated Successfully!');
        return redirect('admin/settings/feeslimit/' . $request->tabText . '/' . $request->currency_id);
    }

    public function getFesslimitDetails(Request $request)
    {
        $data      = [];
        $feeslimit = FeesLimit::where(['transaction_type_id' => $request->transaction_type, 'currency_id' => $request->currency_id])->first();

        if (empty($feeslimit))
        {
            $data['status'] = 401;
        }
        else
        {
            $data['status']    = 200;
            $data['feeslimit'] = $feeslimit;
        }
        return $data;
        exit();
    }

    public function getSpecificCurrencyDetails(Request $request)
    {
        $data = [];

        $currency = Currency::where(['id' => $request->currency_id])->first();

        $feeslimit = FeesLimit::where(['transaction_type_id' => $request->transaction_type, 'currency_id' => $request->currency_id])->first();

        if ($currency && $feeslimit)
        {
            $data['status']    = 200;
            $data['currency']  = $currency;
            $data['feeslimit'] = $feeslimit;
        }
        else
        {
            $data['status']   = 401;
            $data['currency'] = $currency;
        }
        return $data;
        exit();
    }
}
