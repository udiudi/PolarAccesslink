# PolarAccesslink::Exercise

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Id of the trainining session | [optional]
**upload_time** | **String** | Time of the transfer from wrist unit to Polar database | [optional]
**polar_user** | **String** | Absolute link to Polar user owning the training | [optional]
**transaction_id** | **Integer** | Id of the exercise-transaction this training was transferred in | [optional]
**device** | **String** | Polar product used in training | [optional]
**start_time** | **String** | Start time of the training session in local time | [optional]
**duration** | **String** | The duration of the training session as specified in ISO8601 | [optional]
**calories** | **Integer** | Expended calories during training in kilocalories | [optional]
**distance** | **Float** | Distance in meters travelled during training | [optional]
**heart_rate** | [**HeartRate**](HeartRate.md) |  | [optional]
**training_load** | **Float** | Training load effect to user | [optional]
**sport** | **String** | Sport name | [optional]
**has_route** | **Boolean** | Boolean indicating if the exercise has route data | [optional]
**club_id** | **Integer** | Has value if the exercise is from \&quot;Flow For Club\&quot;, otherwise not printed. Value -1 indicates that there were errors finding the club | [optional]
**club_name** | **String** | Has value if the exercise is from \&quot;Flow For Club\&quot;, otherwise not printed. Value \&quot;Ambiguous club location. Please contact support.\&quot; is printed in case of error (and the club-id is -1). | [optional]
**detailed_sport_info** | **String** | String containing the name of a Polar Flow-compatible sport, if one is set for the exercise. | [optional]

## Code Sample

```ruby
require 'PolarAccesslink'

instance = PolarAccesslink::Exercise.new(id: 1937529874,
                                 upload_time: 2008-10-13T10:40:02.000Z,
                                 polar_user: https://www.polaraccesslink/v3/users/1,
                                 transaction_id: 179879,
                                 device: Polar M400,
                                 start_time: 2008-10-13T10:40:02.000Z,
                                 duration: PT2H44M,
                                 calories: 530,
                                 distance: 1600,
                                 heart_rate: null,
                                 training_load: 143.22,
                                 sport: OTHER,
                                 has_route: true,
                                 club_id: 999,
                                 club_name: Polar Club,
                                 detailed_sport_info: WATERSPORTS_WATERSKI)
```


