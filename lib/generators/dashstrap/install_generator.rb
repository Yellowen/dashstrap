module Dashstrap
  module Generators
    # Generator responsible for `install` generator
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc 'Copy all the necessary files to use Dashstrap'

      def copy_scss_manifest
        directory 'stylesheets', 'app/assets/stylesheets'
      end

      def assets_patch
        append_file 'config/initializers/assets.rb' do
          %Q(Rails.application.config.assets.precompile += ['fontawesome-webfont.eot',
                                                   'fontawesome-webfont.woff',
                                                   'fontawesome-webfont.ttf',
                                                   'fontawesome-webfont.svg'])

        end
      end
    end
  end
end
