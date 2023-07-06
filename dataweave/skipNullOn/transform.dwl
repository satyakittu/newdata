%dw 2.0
import * from dw::core::Arrays
output application/json with binary
---

write(payload.greeting,"application/json",{skipNullOn:"objects",writeAttributes:true})



/*
{
  "ex2": "hello",
  "ex3": {
    "@a": "greeting",
    "__text": "hello"
  }
}
*/