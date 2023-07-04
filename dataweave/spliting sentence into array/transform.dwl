%dw 2.0
output application/json
import * from dw::core::Strings
fun getWordIndex(data, length) = length - sizeOf(words(data)[-1])
 
fun recursiveFuntion(msgString) = if(sizeOf(msgString) >= 40)
                                    
                                    do {
                                        var d = getWordIndex(msgString[0 to 39], 40)
                                        ---
                                        [msgString[0 to (d-1)]] ++ recursiveFuntion(msgString[d to -1])
                                    }
                                else
                                    [msgString] 
---
recursiveFuntion(payload.message)


/*
[
    "The MuleSoft Anypoint integration ",
    "platform is a unified platform that ",
    "offers a holistic approach to API design ",
    "and development. MuleSoft supports almost",
    " 300 connectors to databases, SaaS ",
    "platforms, storage resources, and network",
    " services."
]
*/