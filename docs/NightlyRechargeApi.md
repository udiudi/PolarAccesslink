# PolarAccesslink::NightlyRechargeApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_nightly_recharge**](NightlyRechargeApi.md#list_nightly_recharge) | **GET** /v3/users/nightly-recharge | List Nightly Recharges
[**v3_users_nightly_recharge_date_get**](NightlyRechargeApi.md#v3_users_nightly_recharge_date_get) | **GET** /v3/users/nightly-recharge/{date} | Get Nightly Recharge


# **list_nightly_recharge**
> list_nightly_recharge

List Nightly Recharges

List Nightly Recharge data of user for the last 28 days.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::NightlyRechargeApi.new

begin
  #List Nightly Recharges
  api_instance.list_nightly_recharge
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling NightlyRechargeApi->list_nightly_recharge: #{e}"
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



# **v3_users_nightly_recharge_date_get**
> v3_users_nightly_recharge_date_get(date)

Get Nightly Recharge

Get Users Nightly Recharge data for given date.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::NightlyRechargeApi.new

date = nil # Object | Date of Nightly Recharge as ISO-8601 date string, example: \"2020-01-01\"


begin
  #Get Nightly Recharge
  api_instance.v3_users_nightly_recharge_date_get(date)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling NightlyRechargeApi->v3_users_nightly_recharge_date_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | [**Object**](.md)| Date of Nightly Recharge as ISO-8601 date string, example: \&quot;2020-01-01\&quot; |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



