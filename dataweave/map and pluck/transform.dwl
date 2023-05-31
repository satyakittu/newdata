%dw 2.0
output application/json
---
//my requirement is based upon batch we have to add two objects in transaction and print in array
(payload  groupBy ((item, index) ->item.Batch ) pluck $) map (($.&Batch)[0] ++ 
    Transactions:$ map $ - "Batch"
)
//for that i used groupBy based on Batch i grouped the objects and using pluck i convertrd output to array and i used map to mapping the transactions and using the "&" i printed the output
