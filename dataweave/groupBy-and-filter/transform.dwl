%dw 2.0
import * from dw::core::Arrays
output application/json
var arr = [
  {
    "email": "aa@aa.com",
    "RegistrationDate": "2023-05-09T19:06:39Z"
  },
  {
    "email": "bb@bb.com",
    "RegistrationDate": "2023-05-09T18:28:30Z"
  },
  {
    "email": "dd@dd.com",
    "RegistrationDate": "2023-05-09T14:33:40Z"
  }
]
---
(payload ++ arr) groupBy ((item, index) -> item.email) pluck ((value, key, index) -> value) filter ((item, index) -> sizeOf(item) >= 2) map ((item, index) -> {
    "email": item.email[0],
    "globalId": item.globalID[0],
    "RegistrationDate": item.RegistrationDate[0]
})


/*
[
  {
    "email": "aa@aa.com",
    "RegistrationDate": "2023-05-09T19:06:39Z",
    "globalID": "10134115"
  },
  {
    "email": "bb@bb.com",
    "RegistrationDate": "2023-05-09T18:28:30Z",
    "globalID": "9938796"
  }
]
*/