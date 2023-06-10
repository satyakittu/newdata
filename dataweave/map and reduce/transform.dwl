%dw 2.0
output application/json
---
payload map {
    ($.field_key):$.field_value
} reduce ((item, accumulator) ->item ++ accumulator )


/*
{

"SHORT_NAME" : "Rajesh",

"FULL_NAME" : "Rajesh Sharma",

"COUNTRY" : "India"

}
*/