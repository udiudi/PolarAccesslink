# PolarAccesslink::PullNotificationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](PullNotificationsApi.md#list) | **GET** /v3/notifications | List


# **list**
> list

List

Get list of available exercises and activities for users

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::PullNotificationsApi.new

begin
  #List
  api_instance.list
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PullNotificationsApi->list: #{e}"
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



