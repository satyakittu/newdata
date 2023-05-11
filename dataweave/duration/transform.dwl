%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   dayAfterDateTime: |2020-10-05T20:22:34.385Z| + duration({days: 1}),
//in above statement it will print after date
   dayAndHourBeforeDateTime: |2020-10-05T20:22:34.385Z| - duration({days: 1, hours: 1}),
//in above statement it will print one day and one hour before
   pointInTimeBefore: |2020-10-05T20:22:34.385Z| - duration({days: 1, hours: 1, minutes: 20, seconds: 10}),
//in these statement it will print one day and one hour before and it will print based upon given number 
   emptyDuration: duration({}),
   constructDuration: duration({days:4, hours:11, minutes:28}),
   selectHoursFromDuration: duration({days:4, hours:11, minutes:28}).hours,
   decimalAsPeriod:  duration({seconds: 30.5}),
   addNegativeValue: duration({ minutes : 1 }) + duration({ seconds : -1 })
}