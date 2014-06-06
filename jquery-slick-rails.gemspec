# -*- encoding: utf-8 -*-
require File.expand_path("../lib/jquery-slick-rails/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "jquery-slick-rails"
  s.version     = JquerySlickRails::VERSION
  s.authors     = ["Ilya Bodrov"]
  s.email       = ["golosizpru@gmail.com"]
  s.homepage    = "https://github.com/bodrovis/jquery-slick-rails"
  s.summary     = "Integrates Slick carousel into Rails app."
  s.description = "Integrates Slick carousel, a jQuery plugin by Ken Wheeler, into your Rails app."

  s.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE", "README.md"]
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.license       = 'MIT'

  s.add_runtime_dependency 'railties', '>= 3.1'
end