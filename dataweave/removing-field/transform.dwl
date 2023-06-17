%dw 2.0
output application/json
var reward = payload.data filter((item)-> item.itemType=='Reward')
var installation = payload.data filter((item)-> item.itemType=='Installation')
var items = reward ++ installation
//created variables to filter the itemtype and nmaed it rewaed and installation and added them in one variable
---

{
    "itemType":"DD-Offer",
    "id":"DD-1",
    "items": items map 
    {
        itemType : $.itemType,
        id : $.id
    }
}


/*
{
"itemType":"DD-Offer",
"id":"DD-1",
"items":[
{
"itemType": "Reward",
"id": "REWARD-1"
},
{
"itemType": "Reward",
"id": "REWARD-2"
},
{
"itemType": "Installation",
"id": "INSTALLATION-1"
},
{
"itemType": "Installation",
"id": "INSTALLATION-2"
}
]
}
*/