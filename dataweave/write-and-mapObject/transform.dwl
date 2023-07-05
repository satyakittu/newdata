%dw 2.0
output application/json  
---
payload mapObject (
    ($$) : write(if ($ is Object) [$] else $, "application/csv",{"header":true, "separator" : "|"})
 )



/*
{
 
"D1": ["RECORD TYPE"|"SEQUENCE NUMBER"|"CUSTOMER LINK"\n\r"1"|"1"|"00000001"\n\r],
 
"H1": ["INTERCHANGE DATE"|"INTERCHANGE TIME"\n\r"20230630"|"15:00:00"\n\r"20230631"|"16:00:00"\n\r]

}
*/