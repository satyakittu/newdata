%dw 2.0
output application/json  
---
payload update 
{
  case .response -> $ mapObject ((value, key, index) -> 
    (key): 
    {
      "message": if(!value.statusCode? or value.statusCode ==201) "success" else if                     (!value.message?) "Error creating $(key)" else value.message,
      "statusCode": if(!value.statusCode?) 201 else value.statusCode 
    }
  )
}


/*
{
 "correlationId": "3f656800-2281-11ee-9697-00155dbbb29b",
 "response": {
  "aResponse": {
   "message": "Error creating aResponse ",
   "statusCode": "500"
  },
  "bResponse": {
   "message" : "Success"
 "statusCode": "201"
  },
  "cResponse": {
    "message": "Error creating cResponse ",
   "statusCode": "500"
  },
  "dResponse": {
   "message": "Success",
   "statusCode": "201"
  }
 }
}
*/