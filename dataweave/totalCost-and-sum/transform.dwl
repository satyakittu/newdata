%dw 2.0
output application/json
---
        //my requirement is to print the totalcost
 payload.Orders.*Order map {
    totalCost:$.Price * $.Quantity
    } 
 
    //i have got totalcost for that i have to print sum of totalcost
/*
"totalCost":sum(payload.Orders.*Order map (
    $.Price * $.Quantity
) )
*/


/*
[{
  "totalCost": 1995
 },
 {
  "totalCost": 1495
 }
]
*/


/*
{
 "totalCost": 3490
}
*/