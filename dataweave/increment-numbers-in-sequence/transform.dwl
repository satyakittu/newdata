%dw 2.0
import * from dw::core::Arrays
output application/json
---
using(uniqueIdentifier = flatten(payload..) distinctBy $)
payload mapObject {
    ($$) : $ map(val) -> (indexOf(uniqueIdentifier, val) + 1)
}