%dw 2.0
output application/json
var listofDSentries=((payload mapObject ((value, key, index) -> {
    ("key" : (key as String splitBy  "DS")[0]) if((key as String) contains  "DS")
})).*key) default []
 
fun filterKey(listofDSentries, keyD) = ((listofDSentries map (keyD contains $)) filter ((item, index) -> item == true))[0] default false
 
---
(
    do 
    {
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
++
(listofDSentries map {
    HistoricalDate : payload[($ ++ "DS")] default now() as Date, 
    (payload mapObject ((value, key, index) -> 
        ((key) : value) if((key as String contains $) and (!(key as String contains "DS")))
    ))
})
 

 //seperating data from single object to array of objects