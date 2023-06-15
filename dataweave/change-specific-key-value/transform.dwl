%dw 2.0
output application/json
import update from dw::util::Values
 
---
payload  update {
    case .message.event.dateTime ->  $ as DateTime as DateTime {format : "yyyy-MM-dd HH:mm:ss"}
    case .message.event.statusHistory ->  
         $ update "dateTime" with $ as DateTime as DateTime {format : "yyyy-MM-dd HH:mm:ss"}
    case .message.details.custom -> $ update ["substitutions"] with (
    (($ default []) as Array) map (
        if ($.key == "lastActionDate")
            $ update "value" with $ as DateTime as DateTime {format : "yyyy-MM-dd HH:mm:ss"}
        else $
    )
)    
}


/*
{
	"message": {
		"event": {
			"dateTime": "2022-12-06 18:48:33",
			"statusHistory": [{
					"eventStatus": "Answered",
					"dateTime": "2022-12-06 18:48:33"
				},
				{
					"eventStatus": "Disconnected",
					"dateTime": "2022-12-06 18:40:46"
				}
			]
		},
		"details": {
			"custom": [{
				"substitutions": [{
					"value": "2022-12-06 18:48:33",
					"key": "lastActionDate"
				}]
			}]
		}
	}
}
*/