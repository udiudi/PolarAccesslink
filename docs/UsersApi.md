# PolarAccesslink::UsersApi

All URIs are relative to *https://www.polaraccesslink.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /v3/users/{user-id} | Delete user
[**get_user_information**](UsersApi.md#get_user_information) | **GET** /v3/users/{user-id} | Get user information
[**register_user**](UsersApi.md#register_user) | **POST** /v3/users | Register user



## delete_user

> delete_user(user_id)

Delete user

When partner wishes no longer to receive user data, user can be de-registered.This will revoke the access token authorized by user.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::UsersApi.new
user_id = 56 # Integer | User identifier

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
 **user_id** | **Integer**| User identifier |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_information

> User get_user_information(user_id)

Get user information

List user basic information. Note: Although it is possible to get users weight and height from this resource, the [get physical info](#get-physical-info) should be used instead.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::UsersApi.new
user_id = 475 # Integer | User identifier

begin
  #Get user information
  result = api_instance.get_user_information(user_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling UsersApi->get_user_information: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## register_user

> User register_user(register)

Register user

Once partner has been authorized by user, partner must register user before being able to access her data.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::UsersApi.new
register = PolarAccesslink::Register.new # Register |

begin
  #Register user
  result = api_instance.register_user(register)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling UsersApi->register_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **register** | [**Register**](Register.md)|  |

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/xml, application/json
- **Accept**: application/json, application/xml

