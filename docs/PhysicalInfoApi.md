# PolarAccesslink::PhysicalInfoApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_physical_info_transaction**](PhysicalInfoApi.md#commit_physical_info_transaction) | **PUT** /v3/users/{user-id}/physical-information-transactions/{transaction-id} | Commit transaction
[**create_physical_info_transaction**](PhysicalInfoApi.md#create_physical_info_transaction) | **POST** /v3/users/{user-id}/physical-information-transactions | Create transaction
[**get_physical_info**](PhysicalInfoApi.md#get_physical_info) | **GET** /v3/users/{user-id}/physical-information-transactions/{transaction-id}/physical-informations/{physical-info-id} | Get physical info
[**list_physical_infos**](PhysicalInfoApi.md#list_physical_infos) | **GET** /v3/users/{user-id}/physical-information-transactions/{transaction-id} | List physical infos


# **commit_physical_info_transaction**
> commit_physical_info_transaction(transaction_id, user_id)

Commit transaction

After successfully retrieving physical information within a transaction, partners are expected to commit the transaction.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::PhysicalInfoApi.new

transaction_id = nil # Object | Transaction identifier

user_id = nil # Object | User identifier


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
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **user_id** | [**Object**](.md)| User identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_physical_info_transaction**
> create_physical_info_transaction(user_id)

Create transaction

Initiate physical info transaction. Check for new physical info and create a new transaction if found.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::PhysicalInfoApi.new

user_id = nil # Object | User identifier


begin
  #Create transaction
  api_instance.create_physical_info_transaction(user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PhysicalInfoApi->create_physical_info_transaction: #{e}"
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



# **get_physical_info**
> get_physical_info(user_id, transaction_id, physical_info_id)

Get physical info

Get physical info entity data

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::PhysicalInfoApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

physical_info_id = nil # Object | Physical information identifier


begin
  #Get physical info
  api_instance.get_physical_info(user_id, transaction_id, physical_info_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PhysicalInfoApi->get_physical_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **physical_info_id** | [**Object**](.md)| Physical information identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_physical_infos**
> list_physical_infos(transaction_id, user_id)

List physical infos

List new physical info data. After successfully initiating a transaction, physical infos included within it can be retrieved with the provided transactionId.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::PhysicalInfoApi.new

transaction_id = nil # Object | Transaction identifier

user_id = nil # Object | User identifier


begin
  #List physical infos
  api_instance.list_physical_infos(transaction_id, user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling PhysicalInfoApi->list_physical_infos: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **user_id** | [**Object**](.md)| User identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



