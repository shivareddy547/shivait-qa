# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
#

Spree::AppConfiguration.class_eval do


  # Default mail headers settings
  preference :mails_from, :string, default: 'spree@example.com'
  preference :enable_mail_delivery, :boolean, default: false
  preference :mail_bcc, :string, default: 'spree@example.com'
  preference :intercept_email, :string, default: nil

  # Default smtp settings
  preference :mail_host, :string, default: 'localhost'
  preference :mail_domain, :string, default: 'localhost'
  preference :mail_port, :integer, default: 25
  preference :secure_connection_type, :string, default: Spree::Core::MailSettings::SECURE_CONNECTION_TYPES[0]
  preference :mail_auth_type, :string, default: Spree::Core::MailSettings::MAIL_AUTH[0]
  preference :smtp_username, :string, default: nil
  preference :smtp_password, :string, default: nil

  def override_actionmailer_config
    raise 'override_actionmailer_config has been removed. ' \
            'actionmailer\'s config is always overwridden when spree_mail_settings is included'
  end
  alias_method :override_actionmailer_config=, :override_actionmailer_config

end


Spree.config do |config|

  config.admin_interface_logo = '/assets/logo/logo.png'
  config.logo = '/assets/logo/logo.png'
  config.currency="INR"

  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
end

# Configure Spree Dependencies
#
# Note: If a dependency is set here it will NOT be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will make the dependency value go away.
#
Spree.dependencies do |dependencies|
  # Example:
  # Uncomment to change the default Service handling adding Items to Cart
  # dependencies.cart_add_item_service = 'MyNewAwesomeService'
  #

end

# Spree::Api::Dependencies.storefront_cart_serializer = 'MyRailsApp::CartSerializer'

Spree.user_class = "Spree::User"
Spree::Address::ADDRESS_FIELDS = %w(firstname lastname company address1 address2 city country state zipcode  phone)
