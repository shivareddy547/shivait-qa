Rails.application.routes.draw do
  # mount Ckeditor::Engine => '/ckeditor'
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  # mount LetsencryptPlugin::Engine, at: "/"  # It must be at root level
  mount LetsEncrypt::Engine => '/.well-known'
  # get 'spree/request/requestenroll/:course_id/:user_id' => 'spree/request#requestenroll'
  match 'about_us', to: 'spree/home#about', via: [:get]
  match 'contact_us', to: 'spree/home#contact', via: [:get]

  # match 'requestenroll', to: 'spree/requests#requestenroll', via: [:get,:post]
  # match 'requestenroll', to: 'spree/request#requestenroll', via: [:get,:post]
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you wouldit being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Spree::Core::Engine.add_routes do
  # resources :requests
  match 'requestenroll', to: 'requests#requestenroll', via: [:get,:post]
  namespace :admin do
    resources :brands do
      collection do
        post :update_positions
      end
    end
  end
end

Spree::Core::Engine.add_routes do

  namespace :admin do
    resources :requests
  end
end
