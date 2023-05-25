%dw 2.0
output application/json
import * from dw::core::Strings
 //inmporting the strings module
 //based upon requirement we have to filter null value and value needs to be multiplied by 1.15
---
//using filter function first i filtered not equals to null
payload filter ($.value !=null and $.formattedValue !=null  ) map (
    $  update {
        case .formattedValue -> "\$" ++ ((substringAfter($,"\$") * 1.15) as String {format: "0.00", roundMode:"HALF_DOWN"})
        
    }
)
//using map function value should be multiplied with 1.15 for that using update function imultiplied the value with 1.15