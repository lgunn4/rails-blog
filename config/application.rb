require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GraphqlBlogApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.action_controller.default_protect_from_forgery = true

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*' # Replace with your allowed origins
        resource '/graphql', headers: :any, methods: [:post]
      end
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.hosts << "blog.loft-cloud.com"
    config.hosts << "blog.logangunn.com"
    config.hosts << "code.loft-cloud.com"
    config.hosts << 'localhost'
    config.hosts << '127.0.0.1'
  end
end
