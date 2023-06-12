%dw 2.0
output application/json
var abc = "15432222678901"
import last from dw::core::Strings
 
---
payload map (
    $ ++  
    comparison: last($.id,4) == last(abc,4)
)