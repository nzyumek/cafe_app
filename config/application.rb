require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cafe
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    
    config.hosts << "094f566fa34c47d4986402940b686339.vfs.cloud9.us-west-2.amazonaws.com"
    
    config.time_zone = 'Asia/Tokyo'
    config.i18n.default_locale = :ja
    
    config.to_prepare do
       Devise::SessionsController.layout "devise"
       Devise::RegistrationsController.layout "devise"
       Devise::ConfirmationsController.layout "devise"
       Devise::UnlocksController.layout "devise"
       Devise::PasswordsController.layout "devise"
     end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
