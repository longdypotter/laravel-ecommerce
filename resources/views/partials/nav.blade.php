{{-- <header>
    <div class="top-nav container">
      <div class="top-nav-left">
          <div class="logo"><a href="/">Ecommerce</a></div>
          @if (! (request()->is('checkout') || request()->is('guestCheckout')))
          <!-- @include('partials.menus.main') -->
          @endif
      </div>
      <div class="top-nav-right">
          @if (! (request()->is('checkout') || request()->is('guestCheckout')))
          {{menu('main','partials.menus.main-right') }}
          @endif
      </div>
    </div> <!-- end top-nav -->
</header>
--}}
<header>
    <div class="top-nav container">
        <div class="top-nav-left">
          <div class="logo"><a href="/">Ecommerce</a></div>
          @if (! (request()->is('checkout') || request()->is('guestcheckout')))
          {{menu('main','partials.menus.main') }}
          @endif
          </div>
          <div class="top-nav-right">
          @if (! (request()->is('checkout') || request()->is('guestcheckout')))
          @include('partials.menus.main-right')
          @endif
          </div>
      </div>
    </div> <!-- end top-nav -->
</header>
