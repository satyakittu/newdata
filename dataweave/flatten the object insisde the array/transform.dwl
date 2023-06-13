%dw 2.0
output application/json
---
payload map ((item, index) -> 
    item mapObject ((value, key, index) -> 
        (key) :  if (key as String  == "payments") [{(value)}] else value
    )
)



/*
[
  {
    "invoiceId": "60654",
    "Status": "Full",
    "payments": [
        "type": "pymt",
        "id": "7337732",
        "amount": 500.5,
        "number": "00030425",
        "description": "60654",
        "trandate": "2023-01-05T21:00:00",
        "paid": true,
        "paymentDate": "2023-01-05T21:00:00",
    ]
  }
]
*/