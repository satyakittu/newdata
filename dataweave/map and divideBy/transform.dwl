%dw 2.0
output application/json
import * from dw::core::Arrays
---
payload divideBy 2 map (
    {($)}
) map (
    $ -- ["not_started","in_progress","completed"] ++ {
        "Courses Enrolled" : !($.not_started as Number ==0 and 
            $.in_progress as Number ==0  and $.completed as Number ==0 ) 
    }
)


/*
[
 {
  "user_id": "27360",
  "email": "kbolton@hf.com",
  "creation_date": "2023-05-04 15:43:11"
"Courses Enrolled": false
 },
 {
  "user_id": "27359",
  "email": "rafael.tavares@gmail.com",
  "creation_date": "2023-05-04 13:18:43",
"Courses Enrolled": true
 }
]
*/