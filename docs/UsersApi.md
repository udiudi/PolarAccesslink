# PolarAccesslink::UsersApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /v3/users/{user-id} | Delete user
[**get_user_information**](UsersApi.md#get_user_information) | **GET** /v3/users/{user-id} | Get user information
[**register_user**](UsersApi.md#register_user) | **POST** /v3/users | Register user


# **delete_user**
> delete_user(user_id)

Delete user

When partner wishes no longer to receive user data, user can be de-registered.This will revoke the access token authorized by user.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::UsersApi.new

user_id = nil # Object | User identifier


begin
  #Delete user
  api_instance.delete_user(user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling UsersApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_user_information**
> get_user_information(user_id)

Get user information

List user basic information. Note: Although it is possible to get users weight and height from this resource, the [get physical info](#get-physical-info) should be used instead.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::UsersApi.new

user_id = nil # Object | User identifier


begin
  #Get user information
  api_instance.get_user_information(user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling UsersApi->get_user_information: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **register_user**
> register_user

Register user

Once partner has been authorized by user, partner must register user before being able to access her data.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::UsersApi.new

begin
  #Register user
  api_instance.register_user
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling UsersApi->register_user: #{e}"
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



