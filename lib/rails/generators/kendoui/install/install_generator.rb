require 'rails'
require File.expand_path('../../../../../../lib/kendoui-rails/version', __FILE__)

if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module Kendoui
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs KendoUI #{Kendoui::Rails::KENDOUI_VERSION}"
        class_option :theme, :type => :string, :default => "default", :desc => "Kendo UI Theme to install"
        
        source_root File.expand_path('../../../../../../vendor/assets/', __FILE__)
        
        def copy_kendoui_scripts
          say_status("copying", "Kendo UI (#{Kendoui::Rails::KENDOUI_VERSION}) javascripts", :green)
          
          copy_file "javascripts/kendo/kendo.all.min.js", "public/javascripts/kendo.all.min.js"
        end
              
        def copy_kendoui_styles
          say_status("copying", "Kendo UI (#{Kendoui::Rails::KENDOUI_VERSION}) stylesheets", :green)
          
          copy_file "stylesheets/kendo/kendo.common.min.css", "public/stylesheets/kendo.common.min.css"
          copy_file "stylesheets/kendo/kendo.#{options.theme}.min.css", "public/stylesheets/kendo.#{options.theme}.min.css"
        end
      end
    end
  end
else
  module Kendoui
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs KendoUI #{Kendoui::Rails::KENDOUI_VERSION}"
        class_option :theme, :type => :string, :default => "default", :desc => "Kendo UI Theme to install"
        
        source_root File.expand_path("../../../../../../vendor/assets/", __FILE__)
        
        def add_kendoui_scripts
          say_status("adding", "Kendo UI (#{Kendoui::Rails::KENDOUI_VERSION}) to javascripts pipeline", :green)
          
          insert_into_file "app/assets/javascripts/application.js", "//= require kendo/kendo.all.min\n", :before => "//= require_tree ."
        end
              
        def add_kendoui_styles
          say_status("adding", "Kendo UI (#{Kendoui::Rails::KENDOUI_VERSION}) to styles pipeline", :green)
          
          insert_into_file "app/assets/stylesheets/application.css", "*= require kendo/kendo.common.min\n *= require kendo/kendo.#{options.theme}.min\n ", :before => "*= require_self"
        end
      end
    end
  end
end