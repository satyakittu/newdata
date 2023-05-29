%dw 2.0
import * from dw::core::Strings
output application/json  
---
payload map { 
  "orderInfo": $.Order ++ leftPad($.lineNo,3,0)
} 

//padding zeros to a string left side of line no in data weave by using leftpad fun 

