
# Address Item

## Structure

`AddressItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address_line_1` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[A-Za-z0-9 ,]{3,32}$` |
| `address_line_2` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[A-Za-z0-9 ,]{3,32}$` |
| `city` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `32`, *Pattern*: `^[A-Za-z0-9 ]{3,32}$` |
| `state` | `String` | Optional | **Constraints**: *Minimum Length*: `2`, *Maximum Length*: `3`, *Pattern*: `^[A-Za-z]{2,3}$` |
| `country` | `String` | Optional | **Constraints**: *Minimum Length*: `3`, *Maximum Length*: `3`, *Pattern*: `^[A-Za-z]{3,3}$` |
| `zip` | `String` | Optional | **Constraints**: *Minimum Length*: `5`, *Maximum Length*: `5`, *Pattern*: `^[0-9]{5,5}$` |
| `zip_4` | `String` | Optional | **Constraints**: *Minimum Length*: `4`, *Maximum Length*: `4`, *Pattern*: `^[0-9]{4,4}$` |

## Example (as JSON)

```json
{
  "addressLine1": "street number and name",
  "addressLine2": "optional address information",
  "city": "name of the city",
  "state": "NY",
  "country": "USA",
  "zip": "10001",
  "zip4": "0727"
}
```

