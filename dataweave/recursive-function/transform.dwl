%dw 2.0
output application/json  
//imported the object function
import * from dw::core::Objects
//declared a variable with some payload
var nameMatch = {
  "Avery": "Grade",
  "Harris": "Ryan",
  "Bob": "Brew",
  "Ryan":"Mits"
}

fun recursivefunction(data) =
  data match {
    case is Array  -> data map recursivefunction($)
    case is Object -> data mapObject {($$): recursivefunction($)}
    else           -> nameMatch[data] default data
}

//using recursive function matched the data and used case function to convert it into array and as also object to get printed as on th object or else it will print dafault data.
---
recursivefunction(payload)