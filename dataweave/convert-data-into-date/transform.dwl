%dw 2.0
import * from dw::core::Dates
output application/json
---
// converting given date format to another date format
payload map
{
    data: $ mapObject
    if($$~= 'date_')
    {
        ($$): $ as Date {format:"dd-MM-yyyy"} as Date {format: 'yyyy-MM-dd'}
    }else if($$~= 'date_f')
    {
        ($$): $ as Date {format:"dd/MM/yyyy"} as Date {format: 'yyyy-MM-dd'}
    }else
    ($$):$
}.data

// we can write the given date in the format of date and converting to required output