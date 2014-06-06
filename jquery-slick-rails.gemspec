# Maintain your gem's version:
require File.expand_path("../lib/jquery-slick-rails/version", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jquery-slick-rails"
  s.version     = JquerySlickRails::VERSION
  s.authors     = ["Ilya Bodrov"]
  s.email       = ["golosizpru@gmail.com"]
  s.homepage    = "https://github.com/bodrovis/jquery-slick-rails"
  s.summary     = "Integrates Slick carousel with Rails."
  s.description = "Integrates Slick carousel, a jQuery plugin, with your Rails app."

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.license       = 'MIT'

  s.add_runtime_dependency 'railties', '>= 3.1'
end
