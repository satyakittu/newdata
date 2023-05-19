%dw 2.0
output application/json
---
payload  update {
    case .refinements -> $ filter ((item, index) -> item.attribute_id != 'availableStores')
}

//updating and filtering the data based on attribute_id = 'availablestores'