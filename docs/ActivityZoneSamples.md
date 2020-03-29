# PolarAccesslink::ActivityZoneSamples

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**interval** | **Integer** | Sample interval in minutes. | [optional]
**samples** | [**Array&lt;ActivityZoneSample&gt;**](ActivityZoneSample.md) | List of individual zone sample objects. | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::ActivityZoneSamples.new(interval: null,
                                 samples: null)
```


