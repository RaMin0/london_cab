# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'london_cab/version'

Gem::Specification.new do |spec|
  spec.name          = 'london_cab'
  spec.version       = LondonCab::VERSION
  spec.authors       = ['Ramy Aboul Naga']
  spec.email         = ['ramy.naga@gmail.com']

  spec.summary       = 'LondonCab Client'
  spec.homepage      = 'https://github.com/RaMin0/london_cab'

  spec.files         = `git ls-files`.split("\n").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '>= 0.9'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'json'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'byebug',  '~> 9.0'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.47.1'
end
