@extends('layout')

@section('title', 'Products')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')
@component('components.breadcrumbs')
        <a href="/">Home</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <a href="{{route('shop.index')}}"><span>Shop</span></a>
    @endcomponent


    <div class="container">
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

    <div class="products-section container">
        <div class="sidebar">
            <h3>By Category</h3>
            <ul>
            @foreach($categories as $category)
            <li class="{{request()->category==$category->slug ? 'active':'' }}"><a href="{{route('shop.index',['category' => $category->slug])}}">{{$category->name}}</a></li>
            @endforeach 
            </ul>
            <!-- <strong>Price: </strong>
                    <ul>
                        <li>$0-$700</li>
                        <li>$700-$2500</li>
                        <li>$2500$+</li>
                    </ul> -->
        </div> <!-- end sidebar -->
        <div>
                
                 <div class="products-header">
                    <h1 class="stylish-heading">{{$categoryName }}</h1>
                    <div>
                        <strong>Price</strong>
                        <a href="{{route('shop.index',['category'=>request()->category,'sort'=>'low_high'])}}">Low To High</a> |
                        <a href="{{route('shop.index',['category'=>request()->category,'sort'=>'high_low'])}}">High To Low</a>
                    </div>
                <div>
                   
                    

                </div>
            </div>

            <div class="products text-center">
                @forelse ($products as $p)
                    <div class="product">
                        <a href="{{route('shop.show',$p->slug)}}"><img src="{{asset('storage/'.$p->images)}}" alt="product"></a>
                        <a href="{{route('shop.show',$p->slug)}}"><div class="product-name">{{ $p->name }}</div></a>
                        <div class="product-price">{{ $p->presentPrice()}}</div>
                    </div>
                @empty
                    <div style="text-align: left">No items found</div>
                @endforelse
             
            </div> <!-- end products -->
            <div class="spacer"></div>
            {{$products->appends(request()->input())->links()}}
        
            
           
        </div>
    </div>

@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
