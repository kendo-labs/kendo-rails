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
          
          copy_file "javascripts/jquery.min.js", "public/javascripts/jquery.min.js"
          copy_file "javascripts/kendo/kendo.web.min.js", "public/javascripts/kendo.web.min.js"
        end
              
        def copy_kendoui_styles
          say_status("copying", "Kendo UI (#{Kendoui::Rails::KENDOUI_VERSION}) stylesheets", :green)
          
          copy_file "stylesheets/kendo/kendo.common.min.css", "public/stylesheets/kendo.common.min.css"
          directory "stylesheets/kendo/textures", "public/stylesheets/textures"
          
          if options.theme == "all"
            ['black', 'blueopal', 'default', 'metro', 'silver'].each do |theme|
              copy_file "stylesheets/kendo/kendo.#{theme}.min.css", "public/stylesheets/kendo.#{theme}.min.css"
              directory "stylesheets/kendo/#{theme}", "public/stylesheets/#{theme}" 
            end
          else
            copy_file "stylesheets/kendo/kendo.#{options.theme}.min.css", "public/stylesheets/kendo.#{options.theme}.min.css"
            directory "stylesheets/kendo/#{options.theme}", "public/stylesheets/#{options.theme}" 
          end      
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
          
          insert_into_file "app/assets/javascripts/application.js", "//= require kendo/kendo.web.min\n", :before => "//= require_tree ."
        end
              
        def add_kendoui_styles
          if options.theme == "all"
            @theme = "default"
          else
            @theme = options.theme
          end

          say_status("deleting", "Existing Kendo UI Style References", :green)
          
          base='app/assets/stylesheets/'
          app=base + 'application.css'
          tmp=base + 'application_tmp.css'

          search_text = %r{kendo/kendo}

          File.open(tmp, "a") do |tmp_file|         
            File.open(app) do |file|
              file.each_line do |line|
                tmp_file.puts(line) unless line =~ search_text
                end
              end
          end

          File.delete(app)
          File.rename(tmp, app)

          say_status("adding", "Kendo UI (#{Kendoui::Rails::KENDOUI_VERSION}) to styles pipeline", :green)
          
          insert_into_file "app/assets/stylesheets/application.css", "*= require kendo/kendo.common.min\n *= require kendo/kendo.#{@theme}.min\n ", :before => "*= require_self"
        end
      end
    end
  end
end