%dw 2.0
output application/json
---
payload mapObject
{
    ($$): if($ is String) read($,'application/json') else $
}

// mapobject takes input as object of objects and merge them in single object
// the above condition checks the given value is string or not if string convert it into json by using read function else remaining data
