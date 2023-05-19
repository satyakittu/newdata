%dw 2.0
output application/json
---

// requirement is to we need to remove BCE field based on TYPE= Legal. //

payload  update {
    case .Document -> $ map ((item, index) -> item  update {
        case .Customer -> if($.Type == 'Legal') $ - 'BCE' else $
    })
}



                      // second method by using if/else condition//

/*Document: payload.Document map (if ($.Customer.Type == "Legal")
    $ mapObject ((value, key, index) -> 
      (key): 
        if (key as String == "Customer")
          value - "BCE"
        else
          value
    )
  else
    $)*/