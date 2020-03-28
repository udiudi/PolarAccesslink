# PolarAccesslink::Sample

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recording_rate** | **Integer** | Sample recording rate in seconds. Null when recording rate is not applicable - currently only with RR-data. | [optional]
**sample_type** | **String** | Sample type | [optional]
**data** | **String** | Sample values as a comma-separated list of strings. Can contain null -values which indicate a situtation where sensor was offline. | [optional]

## Code Sample

```ruby
require 'OpenapiClient'

instance = PolarAccesslink::Sample.new(recording_rate: 5,
                                 sample_type: null,
                                 data: 0,100,102,97,97,101,103,106,96,89,88,87,98,108,113,112,114,115,118,121,121,121,121,123,117,119,122)
```


