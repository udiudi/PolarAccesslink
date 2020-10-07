# PolarAccesslink::ExercisesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_exercise_fit_without_transaction**](ExercisesApi.md#get_exercise_fit_without_transaction) | **GET** /v3/exercises/{exerciseId}/fit | Get exercise FIT
[**get_exercise_without_transaction**](ExercisesApi.md#get_exercise_without_transaction) | **GET** /v3/exercises/{exerciseId} | Get exercise
[**list_exercises_without_transaction**](ExercisesApi.md#list_exercises_without_transaction) | **GET** /v3/exercises | List exercises


# **get_exercise_fit_without_transaction**
> get_exercise_fit_without_transaction(exercise_id)

Get exercise FIT

FIT file for users exercise.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::ExercisesApi.new

exercise_id = nil # Object | Hashed exercise id.


begin
  #Get exercise FIT
  api_instance.get_exercise_fit_without_transaction(exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling ExercisesApi->get_exercise_fit_without_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exercise_id** | [**Object**](.md)| Hashed exercise id. |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_exercise_without_transaction**
> get_exercise_without_transaction(exercise_id)

Get exercise

Get users exercise using hashed id.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::ExercisesApi.new

exercise_id = nil # Object | Hashed exercise id.


begin
  #Get exercise
  api_instance.get_exercise_without_transaction(exercise_id)
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling ExercisesApi->get_exercise_without_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exercise_id** | [**Object**](.md)| Hashed exercise id. |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_exercises_without_transaction**
> list_exercises_without_transaction

List exercises

List users exercises available in Accesslink.

### Example
```ruby
# load the gem
require 'polar_accesslink'

api_instance = PolarAccesslink::ExercisesApi.new

begin
  #List exercises
  api_instance.list_exercises_without_transaction
rescue PolarAccesslink::ApiError => e
  puts "Exception when calling ExercisesApi->list_exercises_without_transaction: #{e}"
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



