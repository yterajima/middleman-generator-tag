lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-generator-tag/version'

Gem::Specification.new do |spec|
  spec.name          = 'middleman-generator-tag'
  spec.version       = Middleman::GeneratorTag::VERSION
  spec.authors       = ['Yuya Terajima']
  spec.email         = ['terra@e2esound.com']

  spec.summary       = 'Add generator meta tag in html files.'
  spec.description   = 'Add generator meta tag in html files.'
  spec.homepage      = 'https://github.com/yterajima/middleman-generator-tag'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_runtime_dependency 'middleman', '>= 4.0'
  spec.add_runtime_dependency 'nokogiri', '>= 1.6'

  spec.add_development_dependency 'aruba', '>= 0.14.3'
  spec.add_development_dependency 'bundler', '>= 1.16'
  spec.add_development_dependency 'capybara', '>= 2.18.0'
  spec.add_development_dependency 'cucumber', '>= 3.1.0'
  spec.add_development_dependency 'rake', '>= 12.3'
  spec.add_development_dependency 'rubocop', '>= 0.52.1'
end
