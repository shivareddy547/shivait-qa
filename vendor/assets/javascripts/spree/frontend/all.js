// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require spree/frontend/new_design/vendor/modernizr-3.5.0.min
//= require spree/frontend/new_design/vendor/jquery-1.12.4.min
//= require spree/frontend/new_design/popper.min
//= require spree/frontend/new_design/bootstrap.min
//= require spree/frontend/new_design/jquery.slicknav.min
//= require spree/frontend/new_design/owl.carousel.min
//= require spree/frontend/new_design/slick.min
//= require spree/frontend/new_design/wow.min
//= require spree/frontend/new_design/animated.headline
//= require spree/frontend/new_design/jquery.magnific-popup
//= require spree/frontend/new_design/gijgo.min
//= require spree/frontend/new_design/jquery.nice-select.min
//= require spree/frontend/new_design/jquery.counterup.min
//= require spree/frontend/new_design/waypoints.min

//= require spree/frontend/new_design/jquery.form
//= require spree/frontend/new_design/jquery.validate.min
//= require spree/frontend/new_design/mail-script
//= require spree/frontend/new_design/jquery.ajaxchimp.min
//= require spree/frontend/new_design/plugins
//= require spree/frontend/new_design/main


//= require popper

//= require spree
//= require polyfill.min
//= require fetch.umd
//= require spree/api/main

//= require lazysizes.min

//= require spree/frontend/spree4.2/account
//= require spree/frontend/spree4.2/api_tokens
//= require spree/frontend/spree4.2/carousel-noconflict
//= require spree/frontend/spree4.2/cart
//= require spree/frontend/spree4.2/checkout
//= require spree/frontend/spree4.2/checkout/address
//= require spree/frontend/spree4.2/checkout/address_book
//= require spree/frontend/spree4.2/checkout/payment
//= require spree/frontend/spree4.2/checkout/shipment
//= require spree/frontend/spree4.2/views/spree/home/product_carousels
//= require spree/frontend/spree4.2/views/spree/layouts/spree_application
//= require spree/frontend/spree4.2/views/spree/product/related
//= require spree/frontend/spree4.2/views/spree/products/cart_form
//= require spree/frontend/spree4.2/views/spree/products/description
//= require spree/frontend/spree4.2/views/spree/products/index
//= require spree/frontend/spree4.2/views/spree/products/modal_carousel
//= require spree/frontend/spree4.2/views/spree/shared/carousel
//= require spree/frontend/spree4.2/views/spree/shared/carousel/single
//= require spree/frontend/spree4.2/views/spree/shared/carousel/swipes
//= require spree/frontend/spree4.2/views/spree/shared/carousel/thumbnails
//= require spree/frontend/spree4.2/views/spree/shared/delete_address_popup
//= require spree/frontend/spree4.2/views/spree/shared/mobile_navigation
//= require spree/frontend/spree4.2/views/spree/shared/nav_bar
//= require spree/frontend/spree4.2/views/spree/shared/product_added_modal
//= require spree/frontend/spree4.2/views/spree/shared/quantity_select

//= require spree/frontend/spree4.2/turbolinks_scroll_fix

//= require spree/frontend/spree4.2/custom

Spree.routes.api_tokens = Spree.pathFor('api_tokens')
Spree.routes.ensure_cart = Spree.pathFor('ensure_cart')
Spree.routes.api_v2_storefront_cart_apply_coupon_code = Spree.pathFor('api/v2/storefront/cart/apply_coupon_code')
Spree.routes.api_v2_storefront_cart_remove_coupon_code = Spree.pathFor('api/v2/storefront/cart/remove_coupon_code')
Spree.routes.product = function(id) { return Spree.pathFor('products/' + id) }
Spree.routes.product_related = function(id) { return Spree.routes.product(id) + '/related' }
Spree.routes.product_carousel = function (taxonId) { return Spree.pathFor('product_carousel/' + taxonId) }
//=require("turbolinks").start()


//= require spree/frontend/spree_social_products
//= require spree/frontend/add_to_cart_analytics
