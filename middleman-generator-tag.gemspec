# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-generator-tag/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-generator-tag"
  spec.version       = Middleman::GeneratorTag::VERSION
  spec.authors       = ["Yuya Terajima"]
  spec.email         = ["terra@e2esound.com"]

  spec.summary       = %q{Add generator meta tag in html files.}
  spec.description   = %q{Add generator meta tag in html files.}
  spec.homepage      = "https://github.com/yterajima/middleman-generator-tag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency "middleman", ">= 4.0"
  spec.add_runtime_dependency "nokogiri", ">= 1.6"

  spec.add_development_dependency "bundler", ">= 1.7"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "cucumber", ">= 1.3"
  spec.add_development_dependency "aruba", ">= 0.6"
end
