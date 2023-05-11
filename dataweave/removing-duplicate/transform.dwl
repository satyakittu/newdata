%dw 2.0
output application/json
---
//removing duplicate data by using distinctBy and adding the unmatched values by using reduce function
{
    "OrderDetails": (payload.OrderDetails - "OrderLineDetails") ++
    "OrderLineDetails": flatten(payload.OrderDetails.*OrderLineDetails groupBy $.LineID         pluck $ map ((value) -> value map ((value1) -> value1 update {
    case .Quantity -> value.Quantity reduce ($ + $$) as String
}

))) distinctBy $.LineID

}


/*{
  "OrderDetails": {
    "OrderHeader": {
      "OrderID": "1234",
      "OrderDate": "20230509"
    },
    "OrderLineDetails": [
      {
        "LineID": "1",
        "ProdID": "0182860679000",
        "ProdDesc": "Type3 Laptop",
        "UnitPrice": "8000",
        "Quantity": "200"
      },
      {
        "LineID": "2",
        "ProdID": "0182860670019",
        "ProdDesc": "Type5 Laptop",
        "UnitPrice": "17000",
        "Quantity": "4500"
      },
      {
        "LineID": "4",
        "ProdID": "0182860670025",
        "ProdDesc": "Type7 Laptop",
        "UnitPrice": "19000",
        "Quantity": "300"
      }
    ]
  }
}
*/






