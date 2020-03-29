# PolarAccesslink::ExercisesApi

All URIs are relative to *https://www.polaraccesslink.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_exercise_fit_without_transaction**](ExercisesApi.md#get_exercise_fit_without_transaction) | **GET** /v3/exercises/{exerciseId}/fit | Get exercise FIT
[**get_exercise_without_transaction**](ExercisesApi.md#get_exercise_without_transaction) | **GET** /v3/exercises/{exerciseId} | Get exercise
[**list_exercises_without_transaction**](ExercisesApi.md#list_exercises_without_transaction) | **GET** /v3/exercises | List exercises



## get_exercise_fit_without_transaction

> String get_exercise_fit_without_transaction(exercise_id)

Get exercise FIT

FIT file for users exercise.

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::ExercisesApi.new
exercise_id = 'exercise_id_example' # String | Hashed exercise id.

begin
  #Get exercise FIT
  result = api_instance.get_exercise_fit_without_transaction(exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling ExercisesApi->get_exercise_fit_without_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exercise_id** | **String**| Hashed exercise id. |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_exercise_without_transaction

> ExerciseHashId get_exercise_without_transaction(exercise_id)

Get exercise

Get users exercise using hashed id.

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::ExercisesApi.new
exercise_id = 'exercise_id_example' # String | Hashed exercise id.

begin
  #Get exercise
  result = api_instance.get_exercise_without_transaction(exercise_id)
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling ExercisesApi->get_exercise_without_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exercise_id** | **String**| Hashed exercise id. |

### Return type

[**ExerciseHashId**](ExerciseHashId.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_exercises_without_transaction

> Array&lt;ExerciseHashId&gt; list_exercises_without_transaction

List exercises

List users exercises available in Accesslink.

### Example

```ruby
# load the gem
require 'polar_accesslink'
# setup authorization
PolarAccesslink.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PolarAccesslink::ExercisesApi.new

begin
  #List exercises
  result = api_instance.list_exercises_without_transaction
  p result
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling ExercisesApi->list_exercises_without_transaction: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ExerciseHashId&gt;**](ExerciseHashId.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

