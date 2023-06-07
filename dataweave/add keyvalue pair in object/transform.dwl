%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> (key): (value mapObject ((v, k, i) ->(k): (v ++ security: 'authorization') )) )

//add key value pair in the object
