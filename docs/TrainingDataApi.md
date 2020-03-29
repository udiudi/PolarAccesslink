# PolarAccesslink::TrainingDataApi

All URIs are relative to *https://www.polaraccesslink.com*

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



## commit_exercise_transaction

> commit_exercise_transaction(transaction_id, user_id)

Commit transaction

After successfully retrieving training session data within a transaction, partners are expected to commit the transaction.

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
transaction_id = 56 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

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
 **transaction_id** | **Integer**| Transaction identifier |
 **user_id** | **Integer**| User identifier |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_exercise_transaction

> TransactionLocation create_exercise_transaction(user_id)

Create transaction

Check for new training data and create a new transaction if found.

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
user_id = 56 # Integer | User identifier

begin
  #Create transaction
  result = api_instance.create_exercise_transaction(user_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->create_exercise_transaction: #{e}"
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


## get_available_samples

> Samples get_available_samples(user_id, transaction_id, exercise_id)

Get available samples

Retrieve list of links to available samples in training session

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  #Get available samples
  result = api_instance.get_available_samples(user_id, transaction_id, exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_available_samples: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **exercise_id** | **Integer**| Exercise identifier |

### Return type

[**Samples**](Samples.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_exercise_summary

> Exercise get_exercise_summary(user_id, transaction_id, exercise_id)

Get exercise summary

Retrieve training session summary data

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  #Get exercise summary
  result = api_instance.get_exercise_summary(user_id, transaction_id, exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_exercise_summary: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **exercise_id** | **Integer**| Exercise identifier |

### Return type

[**Exercise**](Exercise.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_fit

> String get_fit(user_id, transaction_id, exercise_id)

Get FIT (beta)

Retrieve exercise in FIT format. **Note!** This interface is in beta phase. If there is anything we can help you with or you want to give us feedback, please contact [Support](#support).

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  #Get FIT (beta)
  result = api_instance.get_fit(user_id, transaction_id, exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_fit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **exercise_id** | **Integer**| Exercise identifier |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_gpx

> String get_gpx(user_id, transaction_id, exercise_id)

Get GPX

Retrieve training session summary data in GPX format

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  #Get GPX
  result = api_instance.get_gpx(user_id, transaction_id, exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_gpx: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **exercise_id** | **Integer**| Exercise identifier |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/gpx+xml


## get_heart_rate_zones

> Zones get_heart_rate_zones(user_id, transaction_id, exercise_id)

Get heart rate zones

Retrieve heart rate zones in training session

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  #Get heart rate zones
  result = api_instance.get_heart_rate_zones(user_id, transaction_id, exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_heart_rate_zones: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **exercise_id** | **Integer**| Exercise identifier |

### Return type

[**Zones**](Zones.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_samples

> Sample get_samples(type_id, user_id, transaction_id, exercise_id)

Get samples

Retrieve sample data of given type

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
type_id = 'type_id_example' # String | Sample type id
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  #Get samples
  result = api_instance.get_samples(type_id, user_id, transaction_id, exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_samples: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **String**| Sample type id |
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **exercise_id** | **Integer**| Exercise identifier |

### Return type

[**Sample**](Sample.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## get_tcx

> String get_tcx(user_id, transaction_id, exercise_id)

Get TCX

Retrieve exercise in TCX format

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
user_id = 56 # Integer | User identifier
transaction_id = 56 # Integer | Transaction identifier
exercise_id = 56 # Integer | Exercise identifier

begin
  #Get TCX
  result = api_instance.get_tcx(user_id, transaction_id, exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->get_tcx: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier |
 **transaction_id** | **Integer**| Transaction identifier |
 **exercise_id** | **Integer**| Exercise identifier |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.garmin.tcx+xml


## list_exercises

> Exercises list_exercises(transaction_id, user_id)

List exercises

After successfully initiating a transaction, training sessions included within it can be retrieved with the provided transactionId.

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::TrainingDataApi.new
transaction_id = 56 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  #List exercises
  result = api_instance.list_exercises(transaction_id, user_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling TrainingDataApi->list_exercises: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **Integer**| Transaction identifier |
 **user_id** | **Integer**| User identifier |

### Return type

[**Exercises**](Exercises.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

