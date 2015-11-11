# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compoui/version'

Gem::Specification.new do |spec|
  spec.name          = "compoui"
  spec.version       = Compoui::VERSION
  spec.authors       = ["Aaron Kuo"]
  spec.email         = ["atk.cloud1985xp@gmail.com"]
  spec.summary       = "Component UI for rails"
  spec.description   = ""
  spec.homepage      = "https://github.com/cloud1985xp/compoui"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'activesupport', ['>= 3.0.0']
  spec.add_dependency 'actionpack', ['>= 3.0.0']

  # s.add_development_dependency 'tzinfo', ['>= 0']
  spec.add_development_dependency 'rspec', ['>= 0']
  # s.add_development_dependency 'rr', ['>= 0']
  # s.add_development_dependency 'capybara', ['>= 1.0']
  # s.add_development_dependency 'database_cleaner', ['~> 1.2.0']
  # s.add_development_dependency 'rdoc', ['>= 0']
end
