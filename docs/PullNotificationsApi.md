# PolarAccesslink::PullNotificationsApi

All URIs are relative to *https://www.polaraccesslink.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](PullNotificationsApi.md#list) | **GET** /v3/notifications | List



## list

> AvailableUserDatas list

List

Get list of available exercises and activities for users

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PolarAccesslink::PullNotificationsApi.new

begin
  #List
  result = api_instance.list
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PullNotificationsApi->list: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AvailableUserDatas**](AvailableUserDatas.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

