require 'faalis/extension'
require 'jquery-ui-rails'
require 'font-awesome-rails'
require 'select2-rails'

module Dashstrap
  class TemplateEngine < ::Rails::Engine

    include Faalis::Extension::Base

    def self.register_extension(name, klass)
      Faalis::Extension.extensions[name] = klass
    end

    def self.override_generator_templates(template_path)
      send(:define_singleton_method, 'generator_templates_path') do
        template_path
      end
    end


    register_extension 'dashstrap', self


    override_generator_templates File.expand_path('../../generators/templates', __FILE__)
  end
end

require 'dashstrap/version'
