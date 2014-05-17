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
  spec.description   = %q{An awesome dashboard template for Faalis platform.}
  spec.homepage      = 'https://github.com/Yellowen/dashstrap'
  spec.license       = "GPLv2"

  spec.files         = `git ls-files -z`.split("\x0")
  #spec.require_paths = ['lib', 'vendor/**/*']

   spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'railtie', '=>4.0.4'
end
