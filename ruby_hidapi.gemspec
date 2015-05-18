# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_hidapi/version'

Gem::Specification.new do |spec|
  spec.name          = "Ruby HIDAPI"
  spec.version       = RubyHidapi::VERSION
  spec.authors       = ["ymmtmdk"]
  spec.email         = ["ymmtmdk@gmail.com"]
  spec.extensions    = ["lib/extconf.rb"]
  spec.summary       = %q{A Ruby extension for HIDAPI}
#  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest"
end
