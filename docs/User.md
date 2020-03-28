# PolarAccesslink::User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**polar_user_id** | **Integer** | User&#39;s id in Polar database | [optional]
**member_id** | **String** | User&#39;s identifier in partner&#39;s database | [optional]
**registration_date** | **DateTime** | Timestamp marked when ACCEPTED | [optional]
**first_name** | **String** | User&#39;s first name | [optional]
**last_name** | **String** | User&#39;s surname | [optional]
**birthdate** | **String** | User&#39;s birthdate as YYYY-MM-DD | [optional]
**gender** | **String** | User&#39;s sex | [optional]
**weight** | **Float** | User&#39;s weight in kg | [optional]
**height** | **Float** | Users height in centimeters | [optional]
**field** | [**Array&lt;UserExtraInfo&gt;**](UserExtraInfo.md) | List containing answers given by the user to a number of partner-specific questions. Extra-info is null if there are no required fields defined by the partner. | [optional]

## Code Sample

```ruby
require 'OpenapiClient'

instance = PolarAccesslink::User.new(polar_user_id: 2278512,
                                 member_id: i09u9ujj,
                                 registration_date: 2011-10-14T12:50:37Z,
                                 first_name: Eka,
                                 last_name: Toka,
                                 birthdate: 1985-09-06T00:00:00.000Z,
                                 gender: MALE,
                                 weight: 66,
                                 height: 170,
                                 field: null)
```


