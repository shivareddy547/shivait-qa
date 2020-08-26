class ApplicationController < ActionController::Base

  include Spree::AuthenticationHelpers
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::Store
  include Spree::FrontendHelper
  helper 'spree/base'
  helper 'spree/frontend'



end
