require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Toysshop
  class Application < Rails::Application
    config.i18n.default_locale = :ru
    config.active_record.raise_in_transactional_callbacks = true
    config.middleware.use Rack::SslEnforcer, only_environments: 'production'
    config.action_mailer.default_url_options = {host: 'https://liuxintoys.herokuapp.com'}
  end
end
