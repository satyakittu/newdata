
%dw 2.0
output application/json
import * from dw::core::Objects
---
payload flatMap(
    $."P-HINBAN"  ++ $."V-HINBAN" ++ {($.values)} divideBy 2
)

/*
[
  {
    "key": "P-HINBAN",
    "value": "SH-AAA"
  },
  {
    "key": "V-HINBAN",
    "value": "SH-AAA-01"
  },
  {
    "key": "9001",
    "value": "LCD"
  },
  {
    "key": "9002",
    "value": "550m"
  }
]
*/