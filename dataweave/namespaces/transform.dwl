%dw 2.0
output application/xml
ns env http://www.w3.org/2003/05/soap-envelope/
ns m http://travelcompany.example.org/reservation/
ns role http://www.w3.org/2003/05/soap-envelope/role/next/
ns under true
ns n http://mycompany.example.com/employees/
ns p http://travelcompany.example.org/reservation/travel/
ns q http://travelcompany.example.org/reservation/hotels
---
{
    "env:Envelope" @("xmlns:env":env):
    {
        "env:header":
        {
            "m:reservation" @("xmlns:m":m,"env:role":role,"env: mustunderstand":under):
            {
                "m:reference":payload.Envelope.Header.reservation.reference,
                "m:dateAndTime":payload.Envelope.Header.reservation.dateAndTime
            },
            "n:passenger" @("xmlns:m":m,"env:role":role,"env: mustunderstand":under):{
                "n:name":payload.Envelope.Header.passenger.name
            }
        },
        "env:Body":
        {
            "p:itinerary" @("xmlns:p":p):
            {
                "p:departure":
                {
                    "p:departing":payload.Envelope.Body.itinerary.departure.departing,
                    "p:departing":payload.Envelope.Body.itinerary.departure.arriving,
                    "p:departing":payload.Envelope.Body.itinerary.departure.departureDate,
                    "p:departing":payload.Envelope.Body.itinerary.departure.departureTime,
                    "p:departing":payload.Envelope.Body.itinerary.departure.seatPreference
                },
                "p:return":
                {
                    "p:return":payload.Envelope.Body.itinerary.return.departing,
                    "p:returng":payload.Envelope.Body.itinerary.return.arriving,
                    "p:return":payload.Envelope.Body.itinerary.return.departureDate,
                    "p:return":payload.Envelope.Body.itinerary.return.departureTime,
                    "p:return":payload.Envelope.Body.itinerary.return.seatPreference
                }
            },
            "q:loding" @("xmlns:p":q):
            {
                "q:preference":payload.Envelope.Body.lodging
            }
        }
    }
}