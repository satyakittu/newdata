//Different appraoches to merge two arrays
%dw 2.0
import mergeWith from dw::core::Objects
import leftJoin from dw::core::Arrays
output application/json
var x = [ { "Name": "Satya", "Id": "1" }, { "Name": "kittu", "Id": "2" } ]
var y = [ { "Id": "1", "Age": "20" }, { "Id": "2", "Age": "22" } ]
---
//first,second and third approach will work only when Ids in both arrays 
//will be in same order.fourth approach will have some performance issues
{
    FirstApproach: (x zip y) map ({ ($) } distinctBy $$),
    secondApproach: x map {
                    "Name": $.Name,
                    "Id": $.Id,
                    "Age": y[$$].Age
                },
    thirdApproach: x map ($ ++ { Age: y[$$].Age }),
    fourthApproach: x map { ($.&Name), 
                    (y filter ((item, index) -> $.Id == item.Id)) },
    fifthApproach: leftJoin(x, y, (x) -> x.Id, (y) -> y.Id) 
                        map ($.l mergeWith $.r)                           
}