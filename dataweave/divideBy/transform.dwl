%dw 2.0
import divideBy from dw::core::Objects
import * from dw::core::Strings
output application/json  
---
payload map (
  IDOC: ($ divideBy 3) map ($ mapObject ((value, key, index) -> 
    (substringAfter(key, "_")): value
  ))
)
