=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3.40.0
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PolarAccesslink::HeartRate
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HeartRate' do
  before do
    # run before each test
    @instance = PolarAccesslink::HeartRate.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HeartRate' do
    it 'should create an instance of HeartRate' do
      expect(@instance).to be_instance_of(PolarAccesslink::HeartRate)
    end
  end
  describe 'test attribute "average"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "maximum"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
