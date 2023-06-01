%dw 2.0
output application/json  
---
//my reqiurment is split the data value into key value pairs

//fot that first i mapped the refernece_id and dataint using map function 
payload map ((item, index) -> ({
    reference_id: item.reference_id,
    dataint: item.dataint
  }) ++ {
//after that i concatinate dta object into key value pairs using spliyBy function  after i mapped the coming output using splitBy function i print the output
    (item.data replace "{" with "" replace "}" with "" splitBy ", " map ((item, index) -> {
      ((item splitBy "=")[0]): (item splitBy "=")[1]
    }))
  })


