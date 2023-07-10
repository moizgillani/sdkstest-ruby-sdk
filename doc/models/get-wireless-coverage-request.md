
# Get Wireless Coverage Request

## Structure

`GetWirelessCoverageRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[0-9-]{3,32}$` |
| `request_type` | `String` | Required | **Constraints**: *Minimum Length*: `2`, *Maximum Length*: `12`, *Pattern*: `^[A-Za-z]{2,12}$` |
| `location_type` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `12`, *Pattern*: `^[A-Za-z]{3,12}$` |
| `locations` | [`Locationscoord`](../../doc/models/locationscoord.md) | Required | - |
| `network_types_list` | [`Array<NetworkType>`](../../doc/models/network-type.md) | Required | **Constraints**: *Maximum Items*: `100` |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "requestType": "NW",
  "locationType": "LONGLAT",
  "locations": {
    "coordinatesList": [
      {
        "latitude": "-33.84819",
        "longitude": "151.22049"
      }
    ]
  },
  "networkTypesList": [
    {
      "networkType": "LTE"
    }
  ]
}
```

