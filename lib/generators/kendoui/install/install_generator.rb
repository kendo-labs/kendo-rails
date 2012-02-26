require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module KendoUI
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs KendoUI #{KendoUI::Rails::KENDOUI_VERSION}"
        class_option :ui, :type => :boolean, :default => false, :desc => "Include jQueryUI"
        source_root File.expand_path('../../../../../vendor/assets/javascripts/kendo', __FILE__)

        def copy_kendoui
          say_status("copying", "Kendo UI (#{Kendoui::Rails::KENDOUI_VERSION})", :green)
          copy_file "kendo.all.min.js", "public/javascripts/kendo.all.min.js"
        end

        #Add option to copy over another Style (Metro, etc)
        def copy_kendoui_styles
          say_status("copying", "Kendo UI (#{Jquery::Rails::KENDOUI_VERSION}) default stylesheets", :green)
          source_root File.expand_path('../../../../../vendor/assets/stylesheets/kendo', __FILE__)

          copy_file "kendo.common.min.css", "public/stylesheets/kendo.common.min.css"
          copy_file "kendo.default.min.css", "public/stylesheets/kendo.default.min.css"
        end

      end
    end
  end
else
  module Jquery
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

        def do_nothing
          say_status("deprecated", "You are using Rails 3.1 with the asset pipeline enabled, so this generator is not needed.")
          say_status("", "The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//=require jquery.min` and `//=require kendo/kendo.all.min` to your app/assets/javascripts/application.js")
          say_status("", "If you upgraded your app from Rails 3.0 and still have jquery.min.js, or kendo.all.min in your javascripts, be sure to remove them.")
          say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
          # ok, nothing
        end
      end
    end
  end
end