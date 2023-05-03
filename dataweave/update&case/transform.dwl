%dw 2.0
output application/json
---
payload  update {
    case ship at .order.shipments.shipment -> ship 
    filter ((item, index) -> (not
     (( item.shipmentLineItems.shipmentLineItem
      filter $.orderDetailId == ((ship filter $.shipmentId == "1002").shipmentLineItems.shipmentLineItem
       flatMap $.orderDetailId)[0]) == [])) 
       and item.shipmentType == "Outbound")
}

//I want to filter my order based on a shipmentId I receive for that i used update function in that i have taken case function after entered into order and then entered into shipments using filter function and then based on orderdetailid filterted the output.