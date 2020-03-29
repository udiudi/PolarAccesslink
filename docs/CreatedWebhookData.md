# PolarAccesslink::CreatedWebhookData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the new webhook. | [optional]
**events** | [**WebhookType**](WebhookType.md) |  | [optional]
**url** | **String** | Url where the webhook notification is sent. | [optional]
**signature_secret_key** | **String** | Security key for verifying that sender is actually Polar. | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::CreatedWebhookData.new(id: abdf33,
                                 events: null,
                                 url: https://myapp.example.com/acl_webhook,
                                 signature_secret_key: abe1f3ae-fd33-11e8-8eb2-f2801f1b9fd1)
```


