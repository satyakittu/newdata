%dw 2.0
output application/json
import * from dw::core::Arrays
//importing arrays module
//declaring a variable to compare two arrays
var arr1= [
    {
        "ItemPrice": {
            "ItemID": "1000300",
            "ItemFinalPrice": 849.98
        },
        "ShippingPrice": {
            "ItemID": "1000300",
            "ItemFinalPrice": 10.0
        }
    },
    {
        "ItemPrice": {
            "ItemID": "1000549",
            "ItemFinalPrice": 189.98
        },
        "ShippingPrice": {
            "ItemID": "1000549",
            "ItemFinalPrice": 190.0
        }
    }
]
---
//requirement is two compare two arrays
//for that using do function declared a variable and using update function calling the payload into do function
arr1 map do {
    var thisUpdate= payload firstWith ((update, index) -> update.ItemId == $.ItemPrice.ItemID)
    ---
//now it will give arr1 and using update function it will print the thisupdate is not equal to null it will print based upon UpdateItemPrice or it will print the comparing of two arrays
    $ update {
        case ItemPrice at .ItemPrice.ItemFinalPrice if (thisUpdate != null) -> thisUpdate.UpdatedItemPrice 
        case ShippingPrice at .ShippingPrice.ItemFinalPrice if (thisUpdate != null) ->  thisUpdate.UpdatedShippingAmount 
    }
}