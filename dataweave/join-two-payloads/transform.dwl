%dw 2.0
import * from dw::core::Arrays
var payload1 = [
  {
    "SIRET": "85295154000016",
    "NUM_ETUDE": "078151"
  },
  {
    "SIRET": "9877777777",
    "NUM_ETUDE": "078152"
  },
  {
    "SIRET": "40986858500012",
    "NUM_ETUDE": "089074"
  },
  {
    "SIRET": "41410685600019",
    "NUM_ETUDE": "089075"
  }
]
output application/json  
---
join(payload, payload1, (p1) -> p1.ENT_SIREN ++ p1.ENT_NIC, (p2) -> p2.SIRET) map (
    $.l ++ $.r - "SIRET"
)