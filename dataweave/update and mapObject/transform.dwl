%dw 2.0
output application/json
---
//my requirement is to replace null with "NA" where payload if there is "US" in Array

    //first method
payload  update {
    case .ProductInformation -> $  map ($ mapObject ((value, key, index) -> (key):if(value contains "US") value map ($  default "NA") else  value))
}

    //second method
/*
ProductInformation:payload.ProductInformation map ($ mapObject ((value, key, index) -> (key):if(value contains "US") value map ($  default "NA") else  value))
*/

/*
{
  "ProductInformation": [
    {
      "0": [
        "NA",
        "NA",
        "US"
      ]
    },
    {
      "1": [
        null,
        null,
        "UK"
      ]
    }
  ]
}
*/