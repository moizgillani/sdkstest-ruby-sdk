
# Get Wireless Coverage Request FWA

## Structure

`GetWirelessCoverageRequestFWA`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[0-9-]{3,32}$` |
| `request_type` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `12`, *Pattern*: `^[A-Za-z]{3,12}$` |
| `location_type` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `12`, *Pattern*: `^[A-Za-z]{3,12}$` |
| `locations` | [`Locations`](../../doc/models/locations.md) | Required | - |
| `network_types_list` | [`Array<NetworkType>`](../../doc/models/network-type.md) | Required | **Constraints**: *Maximum Items*: `100` |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "requestType": "FWA",
  "locationType": "ADDRESS",
  "locations": {
    "addressList": [
      {
        "addressLine1": "addressLine17",
        "addressLine2": "addressLine25",
        "city": "city5",
        "state": "state1",
        "country": "country9"
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

