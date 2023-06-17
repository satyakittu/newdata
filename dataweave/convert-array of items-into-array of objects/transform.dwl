%dw 2.0
output application/json
---
payload.Details flatMap ((item, index) -> 
   item.Codes map ((item1, index1) -> 
   {
      "Name":item.Name,
      "Codes":item.Codes[index1],
      "Descriptions":item.Descriptions[index1]
   }
   )
)

//convert array of items into array of objects