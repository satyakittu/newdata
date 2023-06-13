%dw 2.0
output application/json
var a = payload.data.payload.ChangeEventHeader.changedFields
---
{(a map ({
    ($) : $ splitBy "." reduce ((item1, accumulator=payload.data.payload) -> 
accumulator[item1]) 
}))}



