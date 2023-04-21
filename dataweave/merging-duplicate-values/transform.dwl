%dw 2.0
output application/json
---
(payload groupBy $$) mapObject ((value, key, index) -> (key):valuesOf(value) joinBy  ";" ) 