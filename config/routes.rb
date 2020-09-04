Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'home/index'
  get 'home/about'
  get 'home/contact'


  match 'about_us', to: 'spree/home#about', via: [:get]
  match 'contact_us', to: 'spree/home#contact', via: [:get]
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :brands do
      collection do
        post :update_positions
      end
    end
  end
end
