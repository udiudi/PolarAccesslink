# PolarAccesslink::WebhookPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event** | [**WebhookType**](WebhookType.md) |  | [optional]
**user_id** | **Integer** | Id of the user who has new data. | [optional]
**entity_id** | **String** | Id of the available data. | [optional]
**timestamp** | **DateTime** | Time when webhook notification is sent. | [optional]
**url** | **String** | Url to the new available data. | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::WebhookPayload.new(event: null,
                                 user_id: 475,
                                 entity_id: aQlC83,
                                 timestamp: 2018-05-15T14:22:24Z,
                                 url: https://www.polaraccesslink.com/v3/exercises/aQlC83)
```


