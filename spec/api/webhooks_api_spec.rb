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

# Unit tests for PolarAccesslink::WebhooksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @api_instance = PolarAccesslink::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instance of WebhooksApi' do
      expect(@api_instance).to be_instance_of(PolarAccesslink::WebhooksApi)
    end
  end

  # unit tests for create_webhook
  # Create webhook
  # Create new webhook.  When creating webhook the Accesslink sends a ping message to the url in request body. The ping message must be answered with 200 OK or otherwise the webhook is not created.  **Note!** Save the *signature_secret_key* from response since this is the only chance to get it.
  # @param webhook_request Webhook to create.
  # @param [Hash] opts the optional parameters
  # @return [CreatedWebhook]
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
  # @return [WebhookInfo]
  describe 'get_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_webhook
  # Update webhook
  # Edit webhook event types and/or url.  When updating webhook url the Accesslink sends a ping message to the new address. The ping message must be answered with 200 OK or otherwise the webhook is not updated.
  # @param webhook_id Webhook id to update
  # @param webhook_patch New value(s) for events and/or url.
  # @param [Hash] opts the optional parameters
  # @return [WebhookInfo]
  describe 'update_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
