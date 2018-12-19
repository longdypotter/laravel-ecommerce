<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
class SaveForLaterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function store(Request $request)
    {
        //
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
        Cart::instance('switchtosaveforlater')->remove($id);
        return back()->with('success_message','Itme has been message');
    }
    public function switchtocart($id)
    {
        $item=Cart::instance('switchtosaveforlater')->get($id);
        Cart::instance('switchtosaveforlater')->remove($id);

        $duplicates= Cart::instance('switchtosaveforlater')->search(function($cartItem,$rowId) use($id){ 
            return $rowId===$id;
        });
         
        if($duplicates->isNotEmpty())
        {
            return redirect()->route('cart.index')->with('success_message','Item is already in your cart!');
        }
        Cart::instance('default')->add($item->id,$item->name,1,$item->price)->associate('\App\Product');
        return redirect()->route('cart.index')->with('success_message','Item has been move to cart!');
    }
}