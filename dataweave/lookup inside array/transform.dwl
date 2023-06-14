%dw 2.0
output application/json
---
payload flatMap ((item, index) -> 
    (valuesOf(item filterObject ((value, key, index) -> (key startsWith  "link") and !isEmpty(value))) map (
        {
            id:$,
            parent:item.Id,
            genData : item.genData
        }
    ))
)