# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/scm/strategy/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-scm-strategy"
  spec.version       = Capistrano::Scm::Strategy::VERSION
  spec.authors       = ["tiredpixel"]
  spec.email         = ["tp@tiredpixel.com"]
  spec.summary       = %q{Capistrano SCM strategies (sparse).}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/tiredpixel/capistrano-scm-strategy"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
