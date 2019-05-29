<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Currency\CurrencyResource;
use App\Models\Currency;
use Illuminate\Http\Request;

class CurrencyController extends Controller
{
    public function index()
    {
        $currencies = Currency::all();
        return CurrencyResource::collection($currencies);
    }

    public function create()
    {

    }

    public function store(Request $request)
    {
        $currencies = Currency::create($request->all());
        return new CurrencyResource($currencies);
    }

    public function show($id)
    {
        $currencies = Currency::find($id);
        return new CurrencyResource($currencies);
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        $currencies = Currency::findOrFail($currencies);
        $currencies->update($request->all());
        return new CurrencyResource($currencies);
    }

    public function destroy($id)
    {
        $currencies = Currency::find($id);
        if ($currencies->delete())
        {
            return new CurrencyResource($currencies);
        }
    }
}
