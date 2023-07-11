%dw 2.0
output application/json
---
payload map (
    $ mapObject ((value, key, index) -> 
        do {
	var sortedExchange = value orderBy $.date as Date {format : "MM/dd/yyyy"} as Date
	---
        (key) : sortedExchange map ((item, index) -> {
            date: item.date,
            exchangeRate: (sortedExchange.exchangeRate [0 to index] orderBy $) [-1]
        })
}
    )
)
    
/*
[
    {
        "INR": [
            {
                "date": "01/01/1970",
                "exchangeRate": 0
            },
            {
                "date": "02/28/2020",
                "exchangeRate": 73.98
            },
            {
                "date": "03/05/2020",
                "exchangeRate": 73.98
            },
            {
                "date": "03/13/2020",
                "exchangeRate": 73.98
            },
            {
                "date": "03/18/2020",
                "exchangeRate": 73.98
            }
        ]
    },
    {
        "USD": [
            {
                "date": "01/01/1970",
                "exchangeRate": 0
            },
            {
                "date": "02/24/2020",
                "exchangeRate": 71.34
            },
            {
                "date": "02/29/2020",
                "exchangeRate": 71.66
            },
            {
                "date": "03/04/2020",
                "exchangeRate": 71.66
            },
            {
                "date": "03/07/2020",
                "exchangeRate": 71.66
            },
            {
                "date": "03/09/2020",
                "exchangeRate": 71.66
            },
            {
                "date": "03/15/2020",
                "exchangeRate": 71.87
            }
        ]
    }
]
*/