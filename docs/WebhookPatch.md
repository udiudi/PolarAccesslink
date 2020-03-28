# PolarAccesslink::WebhookPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**events** | [**Array&lt;WebhookType&gt;**](WebhookType.md) | Type of events to subscribe. | [optional]
**url** | **String** | Url where the webhook notification is sent. | [optional]

## Code Sample

```ruby
require 'OpenapiClient'

instance = PolarAccesslink::WebhookPatch.new(events: [&quot;EXERCISE&quot;,&quot;ACTIVITY_SUMMARY&quot;],
                                 url: https://myapp.example.com/acl_webhook)
```


