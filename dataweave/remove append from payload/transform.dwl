%dw 2.0
output application/json
import * from dw::core::Strings
---
payload map (
    $ mapObject ((value, key, index) -> 
        (key) : trim(value remove  "Append" )
    )
)


/*
[{

"test": "No Drug Coverage",

"test1": "Benefits Terminated",

"test2": "UNKNOWN",

"test3": "REQUIREMENT_UNKNOWN"

}]
*/