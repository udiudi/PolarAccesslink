=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3.40.0
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

# Common files
require 'polar_accesslink/api_client'
require 'polar_accesslink/api_error'
require 'polar_accesslink/version'
require 'polar_accesslink/configuration'

# Models
require 'polar_accesslink/models/activity'
require 'polar_accesslink/models/activity_log'
require 'polar_accesslink/models/activity_step_sample'
require 'polar_accesslink/models/activity_step_samples'
require 'polar_accesslink/models/activity_zone_sample'
require 'polar_accesslink/models/activity_zone_samples'
require 'polar_accesslink/models/available_user_data'
require 'polar_accesslink/models/available_user_datas'
require 'polar_accesslink/models/created_webhook'
require 'polar_accesslink/models/created_webhook_data'
require 'polar_accesslink/models/duration_zone'
require 'polar_accesslink/models/error'
require 'polar_accesslink/models/exercise'
require 'polar_accesslink/models/exercise_hash_id'
require 'polar_accesslink/models/exercises'
require 'polar_accesslink/models/heart_rate'
require 'polar_accesslink/models/physical_information'
require 'polar_accesslink/models/physical_informations'
require 'polar_accesslink/models/register'
require 'polar_accesslink/models/sample'
require 'polar_accesslink/models/samples'
require 'polar_accesslink/models/transaction_location'
require 'polar_accesslink/models/user'
require 'polar_accesslink/models/user_extra_info'
require 'polar_accesslink/models/webhook_info'
require 'polar_accesslink/models/webhook_info_data'
require 'polar_accesslink/models/webhook_patch'
require 'polar_accesslink/models/webhook_payload'
require 'polar_accesslink/models/webhook_ping'
require 'polar_accesslink/models/webhook_request'
require 'polar_accesslink/models/webhook_type'
require 'polar_accesslink/models/zone'
require 'polar_accesslink/models/zones'

# APIs
require 'polar_accesslink/api/daily_activity_api'
require 'polar_accesslink/api/exercises_api'
require 'polar_accesslink/api/physical_info_api'
require 'polar_accesslink/api/pull_notifications_api'
require 'polar_accesslink/api/training_data_api'
require 'polar_accesslink/api/users_api'
require 'polar_accesslink/api/webhooks_api'

module PolarAccesslink
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
