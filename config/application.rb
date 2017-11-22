# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Economato
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Load the environment variables at beginning
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value.to_s
      end if File.exists?(env_file)
    end

    config.active_job.queue_adapter = :delayed_job

    # Carga todos los locale en cualquier carpeta dentro de locales
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales','**', '*.{rb,yml}').to_s]

  end
end
