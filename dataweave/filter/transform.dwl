%dw 2.0
output application/json
---
(flatten(payload.masterObjectValues.systemObjectValues) 
    flatMap ((item, index) -> item.crossRef)
        filter ((item, index) -> item.systemCode == "SYS2")).xrefValue

//to print the output as array i used flatten and based on the condition systemCode == "SYS2" to print the output as a string in array using filter function.