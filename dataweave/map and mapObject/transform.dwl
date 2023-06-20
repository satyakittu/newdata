%dw 2.0
output application/json
---
payload map ((item, index) -> (
 item mapObject(v,k,i)->{
 ("user" ++ index+1):v
 }
)
)


/*
[
 {
 "user1": "a"
 },
 {
 "user2": "b"
 }
]
*/