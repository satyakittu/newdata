%dw 2.0
output application/json
---
payload mapObject
{
    ($$): trim($)
}

// removing the spaces in value using trim function