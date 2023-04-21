%dw 2.0
output application/json
---
flatten(payload.data.orders.orderItems) filter ((item, index) -> !(item.productCode contains "FREE") ) 