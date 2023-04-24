%dw 2.0
import divideBy from dw::core::Objects
output application/json
---

//converting object into array of objects

//{ "a": 1, "b": true, "a": 2, "b": false, "c": 3 } divideBy 1

//{ "a": 1, "b": true, "a": 2, "b": false, "c": 3 } divideBy 2

//{ "a": 1, "b": true, "a": 2, "b": false, "c": 3 } divideBy 3

{ "a": 1, "b": true, "a": 2, "b": false, "c": 3 } divideBy 4