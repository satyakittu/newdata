%dw 2.0
output application/json
import * from dw::core::Strings
---
payload.Person groupBy $.a.t mapObject ((value, key, index) -> 
   (if(key as String == "Sample") "sample" else (substringAfter((key as String),"Sample"))) : value map (
       $  update 
       {
           case .a.t -> if(key as String == "Sample") "A" else "T"
       }
    )
)

