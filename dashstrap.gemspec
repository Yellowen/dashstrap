# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dashstrap/version'

Gem::Specification.new do |spec|
  spec.name          = 'dashstrap'
  spec.version       = Dashstrap::VERSION
  spec.authors       = ['Sameer Rahmani']
  spec.email         = ['lxsameer@gnu.org']
  spec.summary       = %q{An awesome dashboard template for Faalis platform.}
  spec.description   = %q{An awesome dashboard template for Faalis platform. }
  spec.homepage      = 'https://github.com/Yellowen/dashstrap'
  spec.license       = 'GPLv2'

  spec.files         = `git ls-files -z`.split("\x0")
  #spec.require_paths = ['lib', 'vendor/**/*']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'less-rails'
  spec.add_dependency 'railties'

  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'font-awesome-rails'
  spec.add_dependency 'slim-rails'
  spec.add_dependency 'jquery-ui-rails'
  spec.add_dependency 'rails-assets-jquery-knob'
  spec.add_dependency 'rails-assets-bootstrap-daterangepicker'
  spec.add_dependency 'rails-assets-jquery-sparkline'
  #spec.add_dependency 'rails-assets-angular-ui-bootstrap'

  spec.add_dependency 'select2-rails'

  spec.add_dependency 'momentjs-rails', '>= 2.8.1'
  spec.add_dependency 'bootstrap3-datetimepicker-rails', '~> 4.7'
end
