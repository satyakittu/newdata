%dw 2.0
output application/json
---
payload.bea_order flatMap (
    $ map ({
        id : $.Id,
        flag: false
    })
)