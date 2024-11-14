require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BiblioteDeFilmes
  class Application < Rails::Application

    config.load_defaults 7.1
    config.i18n.default_locale = :"pt-BR"
    config.autoload_paths <<  "#{config.root}/app/services"
    config.autoload_paths <<  "#{config.root}/app/filters"
   
    config.autoload_lib(ignore: %w(assets tasks))

  end
end
