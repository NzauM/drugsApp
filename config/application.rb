require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DrugsApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

   

    # config.time_zone = "Nairobi" => "Africa/Nairobi"
    

    # "Nairobi" => "Africa/Nairobi"

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Nairobi"
    config.secret_key_base = 'blipblapblup'
    # config.environment = "production"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
