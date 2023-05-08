%dw 2.0
output application/csv
---
//main aim is to print the output as two rows in csv format
//for that firstly i converted array into objects based upon id by using groupBy function then by using pluck function converted into array in that using filter function where item not equals to null to get the output in 2 rows.
payload groupBy ((item, index) -> item.id) pluck ((value, key, index) ->{
    id:key,
    startTime:(value.startTime filter ((seconditem, index) ->seconditem != null))[0],
    endTime:(value.endTime filter ((seconditem, index) ->seconditem != null))[0],
    Sunday:(value.Sunday filter ((seconditem, index) ->seconditem != null))[0],
    Monday:(value.Monday filter ((seconditem, index) ->seconditem != null))[0],
    Tuesday:(value.Tuesday filter ((seconditem, index) ->seconditem != null))[0],
    Wednesday:(value.Wednesday filter ((seconditem, index) ->seconditem != null))[0],
    Thursday:(value.Thursday filter ((seconditem, index) ->seconditem != null))[0],
    Friday:(value.Friday filter ((seconditem, index) ->seconditem != null))[0],
    Saturday:(value.Saturday filter ((seconditem, index) ->seconditem != null))[0]
} )