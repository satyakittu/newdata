%dw 2.0
output application/json
---
payload.flights map (item) -> {
    (item mapObject (value, key) -> {
        (emptySeats: value) if(key as String == 'availableSeats'),
        (airline: value) if(key as String == 'airlineName'),
        ((key):value) if(key as String !='availableSeats' and key as String != 'airlineName')
    })
}


/*
[
  {
    "emptySeats": 45,
    "airline": "Ryan Air",
    "aircraftBrand": "Boeing",
    "aircraftType": "737",
    "departureDate": "12/14/2017",
    "origin": "BCN",
    "destination": "FCO"
  },
  {
    "emptySeats": 15,
    "airline": "Ryan Air",
    "aircraftBrand": "Boeing",
    "aircraftType": "747",
    "departureDate": "08/03/2017",
    "origin": "FCO",
    "destination": "DFW"
  }
]
*/