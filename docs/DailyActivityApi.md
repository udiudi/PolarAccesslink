# PolarAccesslink::DailyActivityApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_activity_transaction**](DailyActivityApi.md#commit_activity_transaction) | **PUT** /v3/users/{user-id}/activity-transactions/{transaction-id} | Commit transaction
[**create_activity_transaction**](DailyActivityApi.md#create_activity_transaction) | **POST** /v3/users/{user-id}/activity-transactions | Create transaction
[**get_activity_summary**](DailyActivityApi.md#get_activity_summary) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id} | Get activity summary
[**get_step_samples**](DailyActivityApi.md#get_step_samples) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/step-samples | Get step samples
[**get_zone_samples**](DailyActivityApi.md#get_zone_samples) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/zone-samples | Get zone samples
[**list_activities**](DailyActivityApi.md#list_activities) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id} | List activities


# **commit_activity_transaction**
> commit_activity_transaction(transaction_id, user_id)

Commit transaction

After successfully retrieving activity summary data within a transaction, partners are expected to commit the transaction.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::DailyActivityApi.new

transaction_id = nil # Object | Transaction identifier

user_id = nil # Object | User identifier


begin
  #Commit transaction
  api_instance.commit_activity_transaction(transaction_id, user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling DailyActivityApi->commit_activity_transaction: #{e}"
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



# **create_activity_transaction**
> create_activity_transaction(user_id)

Create transaction

Initiate activity transaction. Check for new activity summaries and create a new transaction if found.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::DailyActivityApi.new

user_id = nil # Object | User identifier


begin
  #Create transaction
  api_instance.create_activity_transaction(user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling DailyActivityApi->create_activity_transaction: #{e}"
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



# **get_activity_summary**
> get_activity_summary(user_id, transaction_id, activity_id)

Get activity summary

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::DailyActivityApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

activity_id = nil # Object | Activity summary identifier


begin
  #Get activity summary
  api_instance.get_activity_summary(user_id, transaction_id, activity_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling DailyActivityApi->get_activity_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **activity_id** | [**Object**](.md)| Activity summary identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_step_samples**
> get_step_samples(user_id, transaction_id, activity_id)

Get step samples

Get activity step samples. Example data can be seen from [appendix](#activity-step-time-series).

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::DailyActivityApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

activity_id = nil # Object | Activity summary identifier


begin
  #Get step samples
  api_instance.get_step_samples(user_id, transaction_id, activity_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling DailyActivityApi->get_step_samples: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **activity_id** | [**Object**](.md)| Activity summary identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_zone_samples**
> get_zone_samples(user_id, transaction_id, activity_id)

Get zone samples

Get activity zone samples. Example data can be seen from [appendix](#activity-zone-time-series).

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::DailyActivityApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

activity_id = nil # Object | Activity summary identifier


begin
  #Get zone samples
  api_instance.get_zone_samples(user_id, transaction_id, activity_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling DailyActivityApi->get_zone_samples: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **activity_id** | [**Object**](.md)| Activity summary identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_activities**
> list_activities(transaction_id, user_id)

List activities

List new activity data. After successfully initiating a transaction, activity summaries included within it can be retrieved with the provided transactionId.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::DailyActivityApi.new

transaction_id = nil # Object | Transaction identifier

user_id = nil # Object | User identifier


begin
  #List activities
  api_instance.list_activities(transaction_id, user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling DailyActivityApi->list_activities: #{e}"
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



