%dw 2.0
output application/json
---
 // requirement is to first we need to check wether the name filed is empty or not if it is not empty then all the ids have to print in array of objects if name filed is null then we need to skip that object//
payload filter ((item, index) -> !isEmpty(item.Name)) map(()-> 
{
    Name: $.Name,
    "Id's": ($ filterObject ((value, key, index) -> (key as String) contains  "id" )) pluck ((value, key, index) -> id:value ) // while printing id i am getting name also to overcome this i ised filter object with this i will get only id fields  then to be set in array used pluck because i/p is object o/p is array//
}
)