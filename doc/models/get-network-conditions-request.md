
# Get Network Conditions Request

## Structure

`GetNetworkConditionsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_name` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[0-9-]{3,32}$` |
| `location_type` | `String` | Required | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `10`, *Pattern*: `^[A-Za-z]{3,10}$` |
| `coordinates` | [`Coordinates`](../../doc/models/coordinates.md) | Required | - |

## Example (as JSON)

```json
{
  "accountName": "0000123456-00001",
  "locationType": "LONGLAT",
  "coordinates": {
    "latitude": "-33.84819",
    "longitude": "151.22049"
  }
}
```

