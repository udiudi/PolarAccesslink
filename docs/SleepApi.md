# PolarAccesslink::SleepApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_nights**](SleepApi.md#list_nights) | **GET** /v3/users/sleep | List nights
[**v3_users_sleep_available_get**](SleepApi.md#v3_users_sleep_available_get) | **GET** /v3/users/sleep/available | Get available sleep times
[**v3_users_sleep_date_get**](SleepApi.md#v3_users_sleep_date_get) | **GET** /v3/users/sleep/{date} | Get Sleep


# **list_nights**
> list_nights

List nights

List sleep data of user for the last 28 days.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::SleepApi.new

begin
  #List nights
  api_instance.list_nights
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling SleepApi->list_nights: #{e}"
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



# **v3_users_sleep_available_get**
> v3_users_sleep_available_get

Get available sleep times

Get the dates with sleep start and end times, where user has sleep data available in the last 28 days.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::SleepApi.new

begin
  #Get available sleep times
  api_instance.v3_users_sleep_available_get
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling SleepApi->v3_users_sleep_available_get: #{e}"
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



# **v3_users_sleep_date_get**
> v3_users_sleep_date_get(date)

Get Sleep

Get Users sleep data for given date.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::SleepApi.new

date = nil # Object | Date of sleep as ISO-8601 date string, example: \"2020-01-01\"


begin
  #Get Sleep
  api_instance.v3_users_sleep_date_get(date)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling SleepApi->v3_users_sleep_date_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | [**Object**](.md)| Date of sleep as ISO-8601 date string, example: \&quot;2020-01-01\&quot; |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



