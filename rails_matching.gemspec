# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_matching/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_matching"
  spec.version       = RailsMatching::VERSION
  spec.authors       = ["Jonas Scherer"]
  spec.email         = ["jonas@matilhaestud.io"]

  spec.summary       = "Matches atributes from one instance with another one"
  spec.description   = "Use this gem to match attributes between your object instances. 
It basically returns the percentage of attributes matched between two instances."
  spec.homepage      = "https://github.com/jonaslsl/rails_matching"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_dependency "activerecord", "~> 4.0.0"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "factory_girl_rails"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "codacy-coverage"
end
