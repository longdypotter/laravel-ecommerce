<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;
class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        if(request()->category)
        {
            $products=Product::with('categories')->whereHas('categories',function($q){
                $q->where('slug',request()->category);
            });
            $categories=Category::all(); 
            $categoryName=$categories->where('slug',request()->category)->first()->name;
        }
        else
        {
            // $products=Product::inRandomOrder()->take(12);
            // $products=Product::take(12);
            $products=Product::where('featured',true);
            $categories=Category::all();
            $categoryName='Featured';
        }
        if(request()->sort=='low_high')
        {
            $products =$products->orderBy('price','asc')->paginate(9);

        }
        elseif(request()->sort=='high_low')
        {
            $products=$products->orderBy('price','desc')->paginate(9);
        }
        else
        {
            $products=$products->paginate(9);
        }
        return view('shop',compact('products','categories','categoryName'));
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
    public function show($slug)
    {
    
        $product = Product::where('slug',$slug)->firstOrFail();
   
        $mightAlsoLike = Product::where('slug', '!=', $slug)->MightAlsoLike()->get();
 
        $stockLevel =$product->quantity;
        // $stockLevel = ($product->quantity);
      //  return $stockLevel;

        return view('product')->with([
            'product' => $product,
             'stockLevel' => $stockLevel,
             'mightAlsoLike' => $mightAlsoLike,
            
        ]);
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
