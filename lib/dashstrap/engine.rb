require 'jquery-ui-rails'
require 'font-awesome-rails'
require 'select2-rails'
require 'momentjs-rails'
require 'bootstrap3-datetimepicker-rails'
require 'rails-assets-jquery-knob'
require 'rails-assets-bootstrap-daterangepicker'
require 'rails-assets-jquery-sparkline'

module Dashstrap
  class TemplateEngine < ::Rails::Engine

    initializer 'dashboard.add_assets_for_precompile' do |app|
      Rails.application.config.assets.precompile += ['fontawesome-webfont.eot',
                                                     'fontawesome-webfont.woff',
                                                     'fontawesome-webfont.ttf',
                                                     'fontawesome-webfont.svg']
    end
  end
end

require 'dashstrap/version'
