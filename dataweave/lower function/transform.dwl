%dw 2.0
output application/json
---
{
    acct_id:payload.test.acct_id[0],
    orderitems:payload.test.orderitems[0] map 
    {
        client_sku:lower($.client_sku),
        units:$.units
    }
}


/*
{
"acct_id": "9395dtYAC",
"orderitems": [
{
"client_sku": "test1",
"units": 1
},
{
"client_sku": "test2",
"units": 1
},
{
"client_sku": "test3",
"units": 1
}]
}
*/