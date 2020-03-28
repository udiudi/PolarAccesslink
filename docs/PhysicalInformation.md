# PolarAccesslink::PhysicalInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Physical information id | [optional]
**transaction_id** | **Integer** | Id of the physical-information-transaction this training was transferred in | [optional]
**created** | **String** | The time physical information was created in Accesslink, in format YYYY-MM-DDTHH:mm:ss.SSS | [optional]
**polar_user** | **String** | Absolute link to user owning the activity | [optional]
**weight** | **Float** | Height | [optional]
**height** | **Float** | Height | [optional]
**maximum_heart_rate** | **Integer** | Maximum heart rate | [optional]
**resting_heart_rate** | **Integer** | Resting hear rate | [optional]
**aerobic_threshold** | **Integer** | Aerobic threshold | [optional]
**anaerobic_threshold** | **Integer** | Anaerobic threshold | [optional]
**vo2_max** | **Integer** | VO2 max | [optional]
**weight_source** | **String** | Weight source | [optional]

## Code Sample

```ruby
require 'OpenapiClient'

instance = PolarAccesslink::PhysicalInformation.new(id: 123,
                                 transaction_id: 179879,
                                 created: 2016-04-27T20:11:33.000Z,
                                 polar_user: https://www.polaraccesslink/v3/users/1,
                                 weight: 80,
                                 height: 180,
                                 maximum_heart_rate: 160,
                                 resting_heart_rate: 60,
                                 aerobic_threshold: 123,
                                 anaerobic_threshold: 123,
                                 vo2_max: 12,
                                 weight_source: SOURCE_MEASURED)
```


