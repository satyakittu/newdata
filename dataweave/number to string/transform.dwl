%dw 2.0
output application/json
---

        // first method
payload map ((item, index) ->item  update {
    case .rate -> ($*100) as String
    case .APY -> ($*100) as String
}) 


        // second method
/*
    payload map (item,index) ->{
        "rate":(item.rate*100) as String {format:"#.####"},
        "APY":(item.APY*100) as String {format:"#.####"}
    }  
 */

