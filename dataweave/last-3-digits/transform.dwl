%dw 2.0
import * from dw::core::Strings
output application/json
---
//we have to print the last 3 digits from the value
payload map (num: $.num last 3)
//using map function taken value and called num and written last 3

