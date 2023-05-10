%dw 2.0
output application/json
---
//when we taking input as array in that scenario it will take set of arrays. 
{
    a: sizeOf([ "a", "b", "c" ]),
    
    "arraySizes": 
        {
            size3: sizeOf([ 1, 2, 3 ]),
            size2: sizeOf([ [ 1, 2, 3 ], [ 4 ] ]),
            size0: sizeOf([])
        },

//in objects it will print based on key value pairs it will give the size 
    objectSizes: 
        {
            sizeIs2: sizeOf({ a: 1, b: 2 }),
            sizeIs0: sizeOf({})
        },

    binarySizes: sizeOf([ "\u0000" as Binary, "\u0001" as Binary, "\u0002" as Binary ]),

    //we can caluclate size for strings also means in string how many letters ar printed including spaces it will print size.
    stringSizes:
        {
            sizeOfSting2: sizeOf("my string"),
            sizeOfEmptyString: sizeOf(""),
            sizeOfNumber: sizeOf("123" as Number)
        },

    nullSize: sizeOf(null)    

}    
