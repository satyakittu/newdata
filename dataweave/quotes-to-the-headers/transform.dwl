%dw 2.0
var data = [
  {
    'Last Name': "Ane",
    "Empl Number": "8631"
  }
]
output application/csv  header=true, quoteValues=true
import * from dw::core::Strings
---
data map (
    $ mapObject ((value, key, index) -> 
        (wrapWith(key, '"')) : value
    )
)