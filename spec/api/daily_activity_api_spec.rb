=begin
#Polar Accesslink API

#Polar Accesslink API documentation

OpenAPI spec version: 3.59.0
Contact: b2bhelpdesk@polar.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.16

=end

require 'spec_helper'
require 'json'

# Unit tests for PolarAccesslink::DailyActivityApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DailyActivityApi' do
  before do
    # run before each test
    @instance = PolarAccesslink::DailyActivityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DailyActivityApi' do
    it 'should create an instance of DailyActivityApi' do
      expect(@instance).to be_instance_of(PolarAccesslink::DailyActivityApi)
    end
  end

  # unit tests for commit_activity_transaction
  # Commit transaction
  # After successfully retrieving activity summary data within a transaction, partners are expected to commit the transaction.
  # @param transaction_id Transaction identifier
  # @param user_id User identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'commit_activity_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_activity_transaction
  # Create transaction
  # Initiate activity transaction. Check for new activity summaries and create a new transaction if found.
  # @param user_id User identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_activity_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activity_summary
  # Get activity summary
  # @param user_id User identifier
  # @param transaction_id Transaction identifier
  # @param activity_id Activity summary identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_activity_summary test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_step_samples
  # Get step samples
  # Get activity step samples. Example data can be seen from [appendix](#activity-step-time-series).
  # @param user_id User identifier
  # @param transaction_id Transaction identifier
  # @param activity_id Activity summary identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_step_samples test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zone_samples
  # Get zone samples
  # Get activity zone samples. Example data can be seen from [appendix](#activity-zone-time-series).
  # @param user_id User identifier
  # @param transaction_id Transaction identifier
  # @param activity_id Activity summary identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_zone_samples test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_activities
  # List activities
  # List new activity data. After successfully initiating a transaction, activity summaries included within it can be retrieved with the provided transactionId.
  # @param transaction_id Transaction identifier
  # @param user_id User identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'list_activities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
