%dw 2.0
output application/json
---
0 to sizeOf(payload)/2-1 map(
   payload[(2*$)]  ++  (payload[(2*$+1)] mapObject ((value, key, index) -> 
    ("t"++ index+1):value
   ))
) 