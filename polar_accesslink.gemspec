# -*- encoding: utf-8 -*-

=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3.40.0
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "polar_accesslink"
  s.version     = "1.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["b2bhelpdesk@polar.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Polar Accesslink API Ruby Gem"
  s.description = "Polar Accesslink API Ruby Gem"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
