%dw 2.0
output application/json
---
payload map
{
    firstName: $.fullName splitBy ' ' reduce $$,
    lastName: $.fullName splitBy ' ' reduce $,
    AddrWithValuesOf: $.city ++ ','++ $.state ++ ','++ $.postal ++ ','++ $.country,
    AddrWithPluck: $.city ++ ','++ $.state ++ ','++ $.postal ++ ','++ $.country,
    miles: $.miles as String{format:'.00'},
    DateofJoin: $.joinedDate as Date as String{format: 'dd-MMM-yyyy'}
}
