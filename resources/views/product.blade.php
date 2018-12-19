@extends('layout')

@section('title', $product->name)

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

    @component('components.breadcrumbs')
        <a href="/">Home</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span><a href="{{route('shop.index')}}">Shop</a></span>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span>{{ $product->name }}</span>
    @endcomponent

    <div class="cart-section container">
        @if (session()->has('success_message'))
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    </div>

    <div class="product-section container">
        <div>
            <div class="product-section-image">
                <!-- <img src="{{asset('img/products/'.$product->slug.'.jpg')}}" alt="product" class="active" id="currentImage"> -->
                <img src="{{asset('storage/'.$product->images)}}" alt="product" class="active" id="currentImage">
            </div>
            <div class="product-section-images"> 
               
            <div class="product-section-thumbnail selected "> 
                    <img src="{{asset('storage/'.$product->images)}}" alt="product" class="active" id="currentImage">
                    </div>
                @if($product->imagess)
                    @foreach(json_decode($product->imagess,true) as $img)
                    <div class="product-section-thumbnail selected "> 
                    <img src="{{asset('storage/'.$img)}}" alt="product" class="active" id="currentImage">
                    </div>
                    @endforeach
                @endif 
       
           {{-- 
            <!-- @if($product->imagess)
               @foreach(json_decode($product->imagess,true) as $img)
               <img src="{{asset('storage/'.$img)}}" alt="product" class="active" id="currentImage">
               @endforeach
            @endif -->
            --}}
            </div>
            <div class="product-section-images">

                {{--<div class="product-section-thumbnail selected">
                   <img src="{{asset('storage/'.$product->images)}}" alt="product"> 
                    <img src="{{productImage($product->images)}}" alt="product"> 
                </div>
                   --}} 
              
            </div>
        </div>
        <div class="product-section-information">
            <h1 class="product-section-title">{{ $product->name }}</h1>
            <div class="product-section-subtitle">{{ $product->details }}</div>
            <div>StockLavel</div>
            <div class="product-section-price">{{ $product->presentPrice()}}</div>

            <p>
                {!! $product->description !!}
            </p>

            <p>&nbsp;</p>
            <form action="{{route('cart.store')}}" method="POST">
                    {{ csrf_field() }}
                    <input type="hidden" name="id" value="{{$product->id}}">
                    <input type="hidden" name="name" value="{{$product->name}}">
                    <input type="hidden" name="price" value="{{$product->price }}">
                    <button type="submit" class="button button-plain">Add to Cart</button>
                </form>
          
        </div>
    </div> <!-- end product-section -->

    @include('partials.might-like')

@endsection

@section('extra-js')
    <script>
        (function(){
            const currentImage=document.querySelector('#currentImage');
            const images=document.querySelectorAll('.product-section-thumbnail');
            console.log(images);
            images.forEach((element) =>element.addEventListener('click',thumbnailClick));
            function thumbnailClick(e){
                // currentImage.src=this.querySelector('img').src;
                currentImage.classList.remove('active');
                currentImage.addEventListener('transitionend',()=>{
                    currentImage.src=this.querySelector('img').src;
                    currentImage.classList.add('active');
                })
                images.forEach((element)=>element.classList.remove('selected'));
                this.classList.add('selected');
            }
        })();
    </script>
@endsection
