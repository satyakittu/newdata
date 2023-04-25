%dw 2.0
var myVar = read('<users xmlns="http://test.com">
                     <user name="satya" lastName="kittu"/>
                     <user name="john" lastName="surya"/>
                    <user name="hari" lastName="prasad"/>
                  </users>', 'application/xml')
output application/json
---
//sample example for keysOf
 { "keysOf" : keysOf({ "a" : true, "b" : 1}) } ++

//example of keysOf using namespaces and attributes in these with the help of faltten converted into array and call the variable  for calling namespaces and with the help of map function called the attributes.
 
"data": flatten([keysOf(myVar.users) map $.#, keysOf(myVar.users )map $.@ ])




