# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kendoui-rails/version"

Gem::Specification.new do |s|
  s.name        = "kendoui-rails"
  s.version     = Kendoui::Rails::VERSION
  s.authors     = ["Brandon Satrom"]
  s.email       = ["brandon@kendoui.com"]
  s.homepage    = "http://github.com/telerik/kendoui_rails"
  s.summary     = %q{Gem for Adding Kendo UI to Ruby Applications}
  s.description = %q{Adds GPLv3 Portions of Kendo UI (http://kendoui.com) to javascripts and styles folders}

  s.rubyforge_project = "kendoui-rails"

  s.add_dependency 'jquery-rails'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
