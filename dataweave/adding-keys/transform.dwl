%dw 2.0
output application/json
---
flatten(payload.HeaderContNum map ((item, index) ->item )) map (HeaderContNum: $)