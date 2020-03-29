# PolarAccesslink::Activity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Activity summary id | [optional]
**polar_user** | **String** | Absolute link to user owning the activity | [optional]
**transaction_id** | **Integer** | Id of the activity-transaction this training was transferred in | [optional]
**date** | **String** | Date when activity summary was recorded, in format YYYY-MM-DD | [optional]
**created** | **String** | The time activity summary was created in Accesslink, in format YYYY-MM-DDTHH:mm:ss.SSS | [optional]
**calories** | **Integer** | Total daily calories in kilo calories including BMR | [optional]
**active_calories** | **Integer** | Total daily calories not including BMR. Precise calculation requires that user&#39;s physical data is entered into Polar Flow | [optional]
**duration** | **String** | The time interval as specified in ISO 8601 | [optional]
**active_steps** | **Integer** | You could consider this as a kind of activity unit. If you take one step the active-steps should increase by one and any activity comparable to one physical step would also increase the number by one | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::Activity.new(id: 1234,
                                 polar_user: https://www.polaraccesslink/v3/users/1,
                                 transaction_id: 179879,
                                 date: 2010-12-31,
                                 created: 2016-04-27T20:11:33.000Z,
                                 calories: 2329,
                                 active_calories: 428,
                                 duration: PT2H44M,
                                 active_steps: 250)
```


