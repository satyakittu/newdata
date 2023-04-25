%dw 2.0
output application/json
var inputPayload= 
    {
        "customerId": "cust1200",
        "customerAddress": "12368 Morisville,Charlotte,NC,45710"
    }
---
//to split the customerAddress i used splitBy function 
inputPayload mapObject ((value, key, index) -> 
            do {
               	var addressVar = value splitBy ","
               	---
                if(key as String == "customerId") id: value 
 //if key is equals to customerID then it will print the key : value
 //else it will print the customerAddress
                else if (key as String == "customerAddress") 
                    {
                        address1: addressVar[0],
                        city: addressVar[1],
                        state: addressVar[2],
                        zip: addressVar[3]
                    }
                    else
                    (key):value
            }
        )
