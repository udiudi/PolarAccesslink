# PolarAccesslink::PhysicalInfoApi

All URIs are relative to *https://www.polaraccesslink.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_physical_info_transaction**](PhysicalInfoApi.md#commit_physical_info_transaction) | **PUT** /v3/users/{user-id}/physical-information-transactions/{transaction-id} | Commit transaction
[**create_physical_info_transaction**](PhysicalInfoApi.md#create_physical_info_transaction) | **POST** /v3/users/{user-id}/physical-information-transactions | Create transaction
[**get_physical_info**](PhysicalInfoApi.md#get_physical_info) | **GET** /v3/users/{user-id}/physical-information-transactions/{transaction-id}/physical-informations/{physical-info-id} | Get physical info
[**list_physical_infos**](PhysicalInfoApi.md#list_physical_infos) | **GET** /v3/users/{user-id}/physical-information-transactions/{transaction-id} | List physical infos



## commit_physical_info_transaction

> commit_physical_info_transaction(transaction_id, user_id)

Commit transaction

After successfully retrieving physical information within a transaction, partners are expected to commit the transaction.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::PhysicalInfoApi.new
transaction_id = 56 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  #Commit transaction
  api_instance.commit_physical_info_transaction(transaction_id, user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PhysicalInfoApi->commit_physical_info_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **Integer**| Transaction identifier |
 **user_id** | **Integer**| User identifier |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_physical_info_transaction

> TransactionLocation create_physical_info_transaction(user_id)

Create transaction

Initiate physical info transaction. Check for new physical info and create a new transaction if found.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::PhysicalInfoApi.new
user_id = 56 # Integer | User identifier

begin
  #Create transaction
  result = api_instance.create_physical_info_transaction(user_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PhysicalInfoApi->create_physical_info_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |

### Return type

[**TransactionLocation**](TransactionLocation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_physical_info

> PhysicalInformation get_physical_info(user_id, transaction_id, physical_info_id)

Get physical info

Get physical info entity data

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::PhysicalInfoApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
physical_info_id = 56 # Integer | Physical information identifier

begin
  #Get physical info
  result = api_instance.get_physical_info(user_id, transaction_id, physical_info_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PhysicalInfoApi->get_physical_info: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **physical_info_id** | **Integer**| Physical information identifier |

### Return type

[**PhysicalInformation**](PhysicalInformation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## list_physical_infos

> PhysicalInformations list_physical_infos(transaction_id, user_id)

List physical infos

List new physical info data. After successfully initiating a transaction, physical infos included within it can be retrieved with the provided transactionId.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::PhysicalInfoApi.new
transaction_id = 56 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  #List physical infos
  result = api_instance.list_physical_infos(transaction_id, user_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PhysicalInfoApi->list_physical_infos: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **Integer**| Transaction identifier |
 **user_id** | **Integer**| User identifier |

### Return type

[**PhysicalInformations**](PhysicalInformations.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

