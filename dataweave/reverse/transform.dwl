%dw 2.0
output application/json
---
//removing keys and printing only values as key : value pairs
payload map ($.name): $.options map (($.label): $.value) reduce ((item, accumulator={}) -> accumulator ++ item)
