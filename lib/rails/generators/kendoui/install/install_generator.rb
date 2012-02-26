require 'rails'
require File.expand_path('../../../../../../lib/kendoui-rails/version', __FILE__)

module KendoUI
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      desc "This generator installs KendoUI #{Kendoui::Rails::KENDOUI_VERSION}"
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