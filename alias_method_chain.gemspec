# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alias_method_chain/version'

Gem::Specification.new do |spec|
  spec.name          = "alias_method_chain"
  spec.version       = AliasMethodChain::VERSION
  spec.authors       = ['Chris Bielinski']
  spec.email         = ['chris@shadow.io']

  spec.summary       = "Provides alias_method_chain for transitions to Rails 5.1"
  spec.description   = "Provides alias_method_chain for transitions to Rails 5.1. Don't use this Gem."
  spec.homepage      = "https://github.com/chrisb/alias_method_chain"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport', '>= 5.1.0'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
