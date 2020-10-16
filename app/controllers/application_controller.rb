class ApplicationController < ActionController::Base

  include Spree::AuthenticationHelpers
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::Store
  include Spree::FrontendHelper
  include Spree::AddressesHelper
  helper 'spree/base'
  helper 'spree/frontend'
  helper 'spree/addresses'
  before_action :set_cookies

  # before_action :delete_cookies

  before_action :configure_permitted_parameters, if: :devise_controller?

  # after_action :get_cookie_with_random,:set_cookies

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

  def set_cookie_with_random

    if !cookies[:key_test].present?
      random_v = generate_activation_code(6)
      cookies[:key_test] = {
          :value => "a yummy cookie#{random_v}",
          :expires => 1.year.from_now,
          :domain => 'domain.com'
      }

    end


# rand(36**length).to_s(36)

  end


  def generate_activation_code(size = 6)
    charset = %w{ 2 3 4 6 7 9 a b c d e f g h i j k l m n o p q r}
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
  end


  def set_cookies

    if !spree_current_user.present?

    if !cookies.signed[:email].present?
      create_chat_cookies
    else

      cookies.permanent.signed[:email]
      find_r = Spree::Room.find_by_name(cookies.permanent.signed[:email])
      if find_r.present?

      else
        cookies.delete :email
        create_chat_cookies
      end

    end

    else
      if !cookies.signed[:email].present?
        cookies.permanent.signed[:email]   = spree_current_user.email

        # u.username=cookies.permanent.signed[:email]
        r = Spree::Room.find_or_initialize_by(:name=>cookies.permanent.signed[:email])
        r.save
      else
        cookies.permanent.signed[:email]   = spree_current_user.email
        # cookies.permanent.signed[:email]
        # find_r = Spree::Room.find_by_name(cookies.permanent.signed[:email])
        find_r = Spree::Room.find_or_create_by(:name=>cookies.permanent.signed[:email])
        if find_r.present?

        else
          cookies.delete :email
          cookies.permanent.signed[:email]   = spree_current_user.email

          # u.username=cookies.permanent.signed[:email]
          r = Spree::Room.find_or_initialize_by(:name=>cookies.permanent.signed[:email])
          r.save
        end

      end

    end

  end

  def delete_cookies
    cookies.delete :email

  end


  def create_chat_cookies
    cookies.permanent.signed[:email]   = "chatuser_#{generate_activation_code}@chat.com"
    u = Spree::User.find_or_initialize_by(:email=>cookies.permanent.signed[:email])
    # u.username=cookies.permanent.signed[:email]
    u.password="123456"
    u.password_confirmation="123456"
    u.save(:validate=>false)
    r = Spree::Room.find_or_initialize_by(:name=>cookies.permanent.signed[:email])
    r.save
  end


end
