%dw 2.0
import mergeWith from dw::core::Objects
output application/json
var array1 = [
  {
    "Address": "KyleMore Street USA",
    "Country": "United Sates"
  }, {
    "Name": "satya",
    "Surname": "Thomas"
  }
]
---
payload map ( $ mergeWith array1[$$])

//merging two arrays of objects in one array for that i imported mergewith core objects and i have used map function to convert it to array. 