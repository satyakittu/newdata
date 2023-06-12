%dw 2.0
output application/json
---
payload.message groupBy $  mapObject ((value, key, index) ->(key):sizeOf(value)) 