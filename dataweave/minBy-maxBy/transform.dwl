%dw 2.0
output application/json
---
//it will print the minimun number using minBy function as well as by using maxBy it will print maximum number

payload map ((item, index) ->item.age ) minBy ((item) -> item)

//payload map ((item, index) ->item.age ) maxBy ((item) ->item )

//payload minBy ((item) ->item.age)

//sum(payload.age)
//by using min and max function also we can get the minimum and maximum numbers
//min(payload.age)

//max(payload.age)

//sum(payload.age)

//avg(payload.age)