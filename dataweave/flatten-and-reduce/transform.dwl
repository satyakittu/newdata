%dw 2.0
output application/json
---
[payload reduce ((item, accumulator) -> 
     accumulator mapObject ((value, key, index) -> 
        (key) : flatten(value + item[key])
     )
)]


/*
[
  {
    "a": [
      {"customMessage1": "Hello world!"},
      {"customMessage2": "Hello world!"},
      {"customMessage11": "Goodbye world!"},
      {"customMessage21": "Goodbye world!"}
    ],
    "b": [
      {"customMessage3": "Hello world!"},
      {"customMessage4": "Hello world!"},
{"customMessage31": "Goodbye world!"},
      {"customMessage41": "Goodbye world!"}
    ],
    ...
    "z": [
      {"customMessage199": "Hello world!"},
      {"customMessage200": "Hello world!"},
{"customMessage1991": "Goodbye world!"},
      {"customMessage2001": "Goodbye world!"}
    ]
  }
]
*/