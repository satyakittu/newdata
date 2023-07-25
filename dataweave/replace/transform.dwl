%dw 2.0
import * from dw::core::Strings
output application/json 
var firstInput =  "AAA-abcdef-AAA"
 
fun replaceA2B(myInput) = if(myInput matches(/([AAA-]).*[-AAA]/)) replaceAll(myInput,"AAA","BBB")
else myInput
---
replaceA2B(firstInput)