# PolarAccesslink::WebhookInfoData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the webhook. | [optional]
**events** | [**WebhookType**](WebhookType.md) |  | [optional]
**url** | **String** | Url where the webhook notification is sent. | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::WebhookInfoData.new(id: abdf33,
                                 events: null,
                                 url: https://myapp.example.com/acl_webhook)
```


