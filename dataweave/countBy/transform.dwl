%dw 2.0
import * from dw::core::Arrays
output application/json

var a = [{name: "satya", email: "abc@.xyzcom", phone: "91 0808907890", company: "Mule", allowance: 2000},{name: "kittu", email: "abc@xyz.com", phone: "91 0808907890", company: "MuleSoft",allowance: 4000}]

var b = [{name: "varun", email: "abc@.xyzcom", phone: "91 0808907890", company: "TCS", allowance: 2000},{name: "gowri", email: "abc@xyz.com", phone: "91 0808907890", company: "APICentrics",allowance: 4000}]
---

//in variable i declared array of objects 

[
    {
        "Name": a.name countBy($ contains "a"),//when we given same letter it will give count 2
        "Company": a.company countBy($ contains "e"),
        "Count": a.allowance countBy($>1000),
    },
        {
        "Name": b.name countBy($ contains "a"),//when we given different letter it will give count only 1
        "Company": b.company countBy($ contains "b"),//in both objects there is deiiferent values then it will give count 0
        "Count": b.allowance countBy($>1000),
    }
]