# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
Dotenv::Railtie.load
module OhenroRun
  class Application < Rails::Application
    config.load_defaults 6.1
    config.i18n.default_locale = :ja
  end
end
