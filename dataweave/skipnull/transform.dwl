%dw 2.0
output application/json skipNullOn="everywhere"
---
  // here the requirement is to we need to check if any field contains null values, if they existes we need to remove entire object which contains null values//
    
                  // second method//
    // here we are simpely eliminating entire null values by using skipNullon everywhere//
payload map ((item, index) -> if((item..) contains(null)) null else item)

                 // third method//
        // by using filter operation//
        /*(payload map
              ($)) filter ! ($.. contains null)*/
