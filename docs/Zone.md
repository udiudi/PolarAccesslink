# PolarAccesslink::Zone

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **Integer** | Zone list index | [optional]
**lower_limit** | **Integer** | Lower heart-rate boundary of the zone | [optional]
**upper_limit** | **Integer** | Upper heart-rate boundary of the zone | [optional]
**in_zone** | **String** | Time duration spent in the zone ISO 8601 | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::Zone.new(index: 1,
                                 lower_limit: 110,
                                 upper_limit: 130,
                                 in_zone: PT4S)
```


