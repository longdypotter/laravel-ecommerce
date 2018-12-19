<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CheckoutRequest;
use Gloudemans\Shoppingcart\Facades\Cart;

use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Cartlyst\Stripe\Exception\CardErrorException;

class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd(getenv('STRIPE_KEY'));

        if(auth()->user() && request()->is('guestcheckout'))
        {
            return redirect()->route('checkout.index');
        }
        $tax=config('cart.tax')/100; 
        $discount=session()->get('coupon')['discount'] ?? 0;


        $newsubtotal=(Cart::subtotal() - $discount);
        $newtax = $newsubtotal * $tax;
        $newtotal=$newsubtotal * (1 + $tax);
       
        return view('checkout')->with([
            'discount'=>$discount,
            'newsubtotal'=>$newsubtotal,
            'newtax' => $newtax,
            'tax'   =>$tax,
            'newtotal' => $newtotal
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request   
     * @return \Illuminate\Http\Response
     */
    public function store(CheckoutRequest $request)
    {
       
    //   dd($request->all());
        try{
            $charge=Stripe::charges()->create([
                'amount' => (Cart::total() / 100),
                'currency' => 'CAD',
                'source' =>$request->stripeToken,
                'description' =>'Order',
                'receipt_email' => $request->email,
                'metadata' =>[
                    //'contents' => $contents,
                    //'quantity' => Cart::instance('default')->count(),
                ],
            ]);
            return back()->with('success_message','Thank You! Your payment has been successfully accepted');

        }catch(Exception $e)
        {

        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
