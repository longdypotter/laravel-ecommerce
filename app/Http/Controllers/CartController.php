<?php

namespace App\Http\Controllers;
use App\Product;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;

use Illuminate\Support\Facades\Validator;


class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product=Product::all();
        $mightAlsoLike = Product::MightAlsoLike()->get();
        return view('cart',compact('mightAlsoLike','product'));
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
    //     $product = new Product;
    //    // $product->id=$request->id;
    //     // $product->name=$request->name;
    //     $product->price=$request->price;
    //     $product->save();
        $duplicates=Cart::search(function($cartItem,$rowId) use($request){
            return $cartItem->id === $request->id;
        });
        if($duplicates->isNotEmpty()){
            return redirect()->route('cart.index')->with('success_message','Itme is already in your cart');
        }
      Cart::add($request->id,$request->name,1,$request->price)->associate('App\Product');
        return redirect()->route('cart.index')->with('success_message','Item was added to your cart');
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
        // return $request->all();

        $validatior= Validator::make($request->all(),[
            'quantity' => 'required|numeric|between:1,5'
        ]);
        if($validatior->fails()){
           
            session()->flash('errors',collect(['Quantity must be between 1 and 5']));
            return response()->json(['success'=> false],400);
        };
            Cart::update($id,$request->quantity);
            session()->flash('success_message','quantity was updated successfully !');
            return response()->json(['success'=> true]);
       
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       
        // $product=Product::find($id);
        // $product->delete();
        Cart::remove($id);
        
        return redirect()->route('cart.index')->with('success_message','Item has been removed!');
    }
    public function switchtosaveforlater($id)
    {
        $item=Cart::get($id);
        Cart::remove($id);

        $duplicates=Cart::instance('switchtosaveforlater')->search(function($cartItem,$rowId) use($id){
            return $rowId===$id;
        });

        if($duplicates->isNotEmpty()){
            return redirect()->route('cart.index')->with('success_message','Item is ready Saved For Later!');
        }
        
        Cart::instance('switchtosaveforlater')->add($item->id,$item->name,1,$item->price)->associate('\App\Product');
        return redirect()->route('cart.index')->with('success_message','Item has been Save For Later!');

    }
}
