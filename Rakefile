require "bundler/gem_tasks"
require "bundler/setup"
require "rails/all"
require "faalis"

Bundler.require(:defaults)
#require_relative "./lib/dashstrap"
require File.expand_path('../lib/dashstrap', __FILE__ )
Dashstrap::TemplateEngine.load_tasks
Faalis::Engine.load_tasks


require 'gettext_i18n_rails/tasks'
