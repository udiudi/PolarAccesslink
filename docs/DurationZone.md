# PolarAccesslink::DurationZone

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **Integer** | Activity zone index | [optional]
**inzone** | **String** | Time duration spent in the zone ISO 8601 | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::DurationZone.new(index: 1,
                                 inzone: PT51M5S)
```


