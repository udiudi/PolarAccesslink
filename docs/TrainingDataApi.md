# PolarAccesslink::TrainingDataApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commit_exercise_transaction**](TrainingDataApi.md#commit_exercise_transaction) | **PUT** /v3/users/{user-id}/exercise-transactions/{transaction-id} | Commit transaction
[**create_exercise_transaction**](TrainingDataApi.md#create_exercise_transaction) | **POST** /v3/users/{user-id}/exercise-transactions | Create transaction
[**get_available_samples**](TrainingDataApi.md#get_available_samples) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples | Get available samples
[**get_exercise_summary**](TrainingDataApi.md#get_exercise_summary) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id} | Get exercise summary
[**get_fit**](TrainingDataApi.md#get_fit) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/fit | Get FIT (beta)
[**get_gpx**](TrainingDataApi.md#get_gpx) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/gpx | Get GPX
[**get_heart_rate_zones**](TrainingDataApi.md#get_heart_rate_zones) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/heart-rate-zones | Get heart rate zones
[**get_samples**](TrainingDataApi.md#get_samples) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples/{type-id} | Get samples
[**get_tcx**](TrainingDataApi.md#get_tcx) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/tcx | Get TCX
[**list_exercises**](TrainingDataApi.md#list_exercises) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id} | List exercises


# **commit_exercise_transaction**
> commit_exercise_transaction(transaction_id, user_id)

Commit transaction

After successfully retrieving training session data within a transaction, partners are expected to commit the transaction.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

transaction_id = nil # Object | Transaction identifier

user_id = nil # Object | User identifier


begin
  #Commit transaction
  api_instance.commit_exercise_transaction(transaction_id, user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->commit_exercise_transaction: #{e}"
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



# **create_exercise_transaction**
> create_exercise_transaction(user_id)

Create transaction

Check for new training data and create a new transaction if found.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

user_id = nil # Object | User identifier


begin
  #Create transaction
  api_instance.create_exercise_transaction(user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->create_exercise_transaction: #{e}"
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



# **get_available_samples**
> get_available_samples(user_id, transaction_id, exercise_id)

Get available samples

Retrieve list of links to available samples in training session

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

exercise_id = nil # Object | Exercise identifier


begin
  #Get available samples
  api_instance.get_available_samples(user_id, transaction_id, exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_available_samples: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **exercise_id** | [**Object**](.md)| Exercise identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_exercise_summary**
> get_exercise_summary(user_id, transaction_id, exercise_id)

Get exercise summary

Retrieve training session summary data

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

exercise_id = nil # Object | Exercise identifier


begin
  #Get exercise summary
  api_instance.get_exercise_summary(user_id, transaction_id, exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_exercise_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **exercise_id** | [**Object**](.md)| Exercise identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_fit**
> get_fit(user_id, transaction_id, exercise_id)

Get FIT (beta)

Retrieve exercise in FIT format. **Note!** This interface is in beta phase. If there is anything we can help you with or you want to give us feedback, please contact [Support](#support).

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

exercise_id = nil # Object | Exercise identifier


begin
  #Get FIT (beta)
  api_instance.get_fit(user_id, transaction_id, exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_fit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **exercise_id** | [**Object**](.md)| Exercise identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_gpx**
> get_gpx(user_id, transaction_id, exercise_id, opts)

Get GPX

Retrieve training session summary data in GPX format

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

exercise_id = nil # Object | Exercise identifier

opts = {
  include_pause_times: nil # Object | Whether to add pauses as part of the route. Default is false.
}

begin
  #Get GPX
  api_instance.get_gpx(user_id, transaction_id, exercise_id, opts)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_gpx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **exercise_id** | [**Object**](.md)| Exercise identifier |
 **include_pause_times** | [**Object**](.md)| Whether to add pauses as part of the route. Default is false. | [optional]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_heart_rate_zones**
> get_heart_rate_zones(user_id, transaction_id, exercise_id)

Get heart rate zones

Retrieve heart rate zones in training session

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

exercise_id = nil # Object | Exercise identifier


begin
  #Get heart rate zones
  api_instance.get_heart_rate_zones(user_id, transaction_id, exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_heart_rate_zones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **exercise_id** | [**Object**](.md)| Exercise identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_samples**
> get_samples(type_id, user_id, transaction_id, exercise_id)

Get samples

Retrieve sample data of given type

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

type_id = nil # Object | Sample type id

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

exercise_id = nil # Object | Exercise identifier


begin
  #Get samples
  api_instance.get_samples(type_id, user_id, transaction_id, exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_samples: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | [**Object**](.md)| Sample type id |
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **exercise_id** | [**Object**](.md)| Exercise identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_tcx**
> get_tcx(user_id, transaction_id, exercise_id)

Get TCX

Retrieve exercise in TCX format

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

user_id = nil # Object | User identifier

transaction_id = nil # Object | Transaction identifier

exercise_id = nil # Object | Exercise identifier


begin
  #Get TCX
  api_instance.get_tcx(user_id, transaction_id, exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_tcx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**Object**](.md)| User identifier |
 **transaction_id** | [**Object**](.md)| Transaction identifier |
 **exercise_id** | [**Object**](.md)| Exercise identifier |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_exercises**
> list_exercises(transaction_id, user_id)

List exercises

After successfully initiating a transaction, training sessions included within it can be retrieved with the provided transactionId.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::TrainingDataApi.new

transaction_id = nil # Object | Transaction identifier

user_id = nil # Object | User identifier


begin
  #List exercises
  api_instance.list_exercises(transaction_id, user_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->list_exercises: #{e}"
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



