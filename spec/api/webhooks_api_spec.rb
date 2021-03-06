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

# Unit tests for PolarAccesslink::WebhooksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @instance = PolarAccesslink::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instance of WebhooksApi' do
      expect(@instance).to be_instance_of(PolarAccesslink::WebhooksApi)
    end
  end

  # unit tests for create_webhook
  # Create webhook
  # Create new webhook.  When creating webhook the Accesslink sends a ping message to the url in request body. The ping message must be answered with 200 OK or otherwise the webhook is not created.  **Note!** Save the *signature_secret_key* from response since this is the only chance to get it.  **Please also note** that currently there is an issue with SLEEP event delivery. You can still subscribe to them but you will not receive SLEEP events through the webhook at the moment. We are working on fixing the issue and you will start to receive SLEEP events eventually.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_webhook
  # Delete webhook
  # Delete webhook by id.
  # @param webhook_id Webhook id to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook
  # Get webhook
  # Returns created webhook if exists.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_webhook
  # Update webhook
  # Edit webhook event types and/or url.  When updating webhook url the Accesslink sends a ping message to the new address. The ping message must be answered with 200 OK or otherwise the webhook is not updated.  **Please note** that currently there is an issue with SLEEP event delivery. You can still subscribe to them but you will not receive SLEEP events through the webhook at the moment. We are working on fixing the issue and you will start to receive SLEEP events eventually.
  # @param webhook_id Webhook id to update
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
