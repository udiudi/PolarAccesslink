=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3.40.0
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'date'

module PolarAccesslink
  class WebhookType
    EXERCISE = "EXERCISE".freeze
    ACTIVITY_SUMMARY = "ACTIVITY_SUMMARY".freeze
    PHYSICAL_INFORMATION = "PHYSICAL_INFORMATION".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = WebhookType.constants.select { |c| WebhookType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #WebhookType" if constantValues.empty?
      value
    end
  end
end