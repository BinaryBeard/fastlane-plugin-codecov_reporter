lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/codecov_reporter/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-codecov_reporter'
  spec.version       = Fastlane::CodecovReporter::VERSION
  spec.author        = 'BinaryBeard'
  spec.email         = 'sam.bantner@me.com'

  spec.summary       = 'Uploads coverage report to Codecov.io'
  spec.homepage      = "https://github.com/BinaryBeard/fastlane-plugin-codecov_reporter"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'fastlane', '>= 2.52.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
