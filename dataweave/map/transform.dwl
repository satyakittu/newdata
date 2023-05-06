%dw 2.0
output application/json
---
//first i want to print the output as the first record needs to have 3 records, 2nd record needs 2 records, the last record needs one
payload map ((item1, index) -> (1 to item1."DaysBetween") 
map (
{ 
    "TENANTUNIQUENAME":item1.TENANTUNIQUENAME,
    "LAST_UPDATE":item1.LAST_UPDATE
})
) then flatten($)

//to print the output as above comment i used map of map function i used iteration based upon "DaysBetween" and i have got the output. 