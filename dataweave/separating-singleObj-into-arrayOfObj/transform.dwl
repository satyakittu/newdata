%dw 2.0
output application/json
var listofDSentries=((payload mapObject ((value, key, index) -> {
    ("key" : (key as String splitBy  "DS")[0]) if((key as String) contains  "DS")
})).*key) default []

//creating variable and using mapobject spliting the key based on key containd "DS" and removed DS in the keys or it will print default.
fun filterKey(listofDSentries, keyD) = ((listofDSentries map (keyD contains $)) filter ((item, index) -> item == true))[0] default false
---
(
    do {
        var data = (payload filterObject ((value, key, index) -> !filterKey(listofDSentries, key)))
        ---
        if(sizeOf(data) > 0)
        [{
            HistoricalDate : now() as Date,
            (data)
        }]
        else []
    }  
)
//using do function declared a variable in that filtered where fun not equal to key and using if else condition it will print sizeof data > 0 else  default .
++
(listofDSentries map {
    HistoricalDate : payload[($ ++ "DS")] default now() as Date, 
    (payload mapObject ((value, key, index) -> 
        ((key) : value) if((key as String contains $) and (!(key as String contains "DS")))
    ))
})

//for above comment it will come one object and for this we have concatinate the PL_1 and RE_1 for above objects and the output will print in array of objects.

