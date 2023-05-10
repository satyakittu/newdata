%dw 2.0
output application/json
---
//here we have to add start and end time for coming payload
valuesOf(payload groupBy $.department) flatMap (
        do {
           	var myVar = $ orderBy $.time
            var start = myVar[0].time 
           	---
            myVar map ((item, index) -> 
                        
            item ++ { start: start + (1 * index + 1) + (3 * index), end: start + (1 * index + 1) + (3 * index) + 3 }
                           
)
}
)

// i created a variable in do function in that based on time i have ordered the set od objects after that using map function using item i have added start and end time with payload using index.