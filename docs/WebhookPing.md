# PolarAccesslink::WebhookPing

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **DateTime** | Time when webhook ping is sent. | [optional]
**event** | **String** | Only possible value is PING for ping message. | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::WebhookPing.new(timestamp: 2018-05-15T14:22:24Z,
                                 event: null)
```


