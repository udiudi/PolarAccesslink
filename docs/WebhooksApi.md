# PolarAccesslink::WebhooksApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /v3/webhooks | Create webhook
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /v3/webhooks/{webhook-id} | Delete webhook
[**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /v3/webhooks | Get webhook
[**update_webhook**](WebhooksApi.md#update_webhook) | **PATCH** /v3/webhooks/{webhook-id} | Update webhook


# **create_webhook**
> create_webhook

Create webhook

Create new webhook.  When creating webhook the Accesslink sends a ping message to the url in request body. The ping message must be answered with 200 OK or otherwise the webhook is not created.  **Note!** Save the *signature_secret_key* from response since this is the only chance to get it.  **Please also note** that currently there is an issue with SLEEP event delivery. You can still subscribe to them but you will not receive SLEEP events through the webhook at the moment. We are working on fixing the issue and you will start to receive SLEEP events eventually.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::WebhooksApi.new

begin
  #Create webhook
  api_instance.create_webhook
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_webhook**
> delete_webhook(webhook_id)

Delete webhook

Delete webhook by id.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::WebhooksApi.new

webhook_id = nil # Object | Webhook id to delete


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
 **webhook_id** | [**Object**](.md)| Webhook id to delete |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_webhook**
> get_webhook

Get webhook

Returns created webhook if exists.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::WebhooksApi.new

begin
  #Get webhook
  api_instance.get_webhook
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_webhook**
> update_webhook(webhook_id)

Update webhook

Edit webhook event types and/or url.  When updating webhook url the Accesslink sends a ping message to the new address. The ping message must be answered with 200 OK or otherwise the webhook is not updated.  **Please note** that currently there is an issue with SLEEP event delivery. You can still subscribe to them but you will not receive SLEEP events through the webhook at the moment. We are working on fixing the issue and you will start to receive SLEEP events eventually.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::WebhooksApi.new

webhook_id = nil # Object | Webhook id to update


begin
  #Update webhook
  api_instance.update_webhook(webhook_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**Object**](.md)| Webhook id to update |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



