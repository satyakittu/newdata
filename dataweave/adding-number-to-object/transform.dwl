%dw 2.0
output application/json
---
payload map {
    num: ($$+1),
    name:$.name,
    jobs:$.jobs map {
        num:$$+1,
        "type":$."type"
    }
}

//in this i need to add num for every object for that using map function converted into array and using index i added number field foe every object. 