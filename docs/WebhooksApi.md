# PolarAccesslink::WebhooksApi

All URIs are relative to *https://www.polaraccesslink.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /v3/webhooks | Create webhook
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /v3/webhooks/{webhook-id} | Delete webhook
[**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /v3/webhooks | Get webhook
[**update_webhook**](WebhooksApi.md#update_webhook) | **PATCH** /v3/webhooks/{webhook-id} | Update webhook



## create_webhook

> CreatedWebhook create_webhook(webhook_request)

Create webhook

Create new webhook.  When creating webhook the Accesslink sends a ping message to the url in request body. The ping message must be answered with 200 OK or otherwise the webhook is not created.  **Note!** Save the *signature_secret_key* from response since this is the only chance to get it.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarAccesslink::WebhooksApi.new
webhook_request = PolarAccesslink::WebhookRequest.new # WebhookRequest | Webhook to create.

begin
  #Create webhook
  result = api_instance.create_webhook(webhook_request)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_request** | [**WebhookRequest**](WebhookRequest.md)| Webhook to create. |

### Return type

[**CreatedWebhook**](CreatedWebhook.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> delete_webhook(webhook_id)

Delete webhook

Delete webhook by id.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarAccesslink::WebhooksApi.new
webhook_id = 56 # Integer | Webhook id to delete

begin
  #Delete webhook
  api_instance.delete_webhook(webhook_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **Integer**| Webhook id to delete |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> WebhookInfo get_webhook

Get webhook

Returns created webhook if exists.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarAccesslink::WebhooksApi.new

begin
  #Get webhook
  result = api_instance.get_webhook
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookInfo**](WebhookInfo.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> WebhookInfo update_webhook(webhook_id, webhook_patch)

Update webhook

Edit webhook event types and/or url.  When updating webhook url the Accesslink sends a ping message to the new address. The ping message must be answered with 200 OK or otherwise the webhook is not updated.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarAccesslink::WebhooksApi.new
webhook_id = 56 # Integer | Webhook id to update
webhook_patch = PolarAccesslink::WebhookPatch.new # WebhookPatch | New value(s) for events and/or url.

begin
  #Update webhook
  result = api_instance.update_webhook(webhook_id, webhook_patch)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **Integer**| Webhook id to update |
 **webhook_patch** | [**WebhookPatch**](WebhookPatch.md)| New value(s) for events and/or url. |

### Return type

[**WebhookInfo**](WebhookInfo.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

