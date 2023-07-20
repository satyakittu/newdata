%dw 2.0
output application/json
---
payload  update {
    case .product.insuredItems -> $ map (
        $  update {
            case .insuredItems -> $ map (
                $ -- ["policyId","AssetName"] filterObject ((value, key, index) -> 
                    !((key as String== "ClauseFreeText") and isEmpty(value))
                )
            )
        }
    )
}

/*
{
	"product": {
		"Product_Sum": "1144.58",
		"insuredItems": [{
			"type": "Test",
			"insuredItems": [{
					"streetBus": "dfdg",
					"postalCode": "33554",
					"city": "fgf",
					"country": "fgg"
				},
				{
					"activityType": "Administrateur (ASBL/Club de Sport)",
					"activityDescription": "cfgfhfgh",
					"editMode": false,
					"ClauseFreeText": [
						"Text",
						"Test Text"
					]
				}
			]
		}]
	}
}
*/