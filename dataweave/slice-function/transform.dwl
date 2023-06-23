%dw 2.0
import * from dw::core::Arrays
output application/json
---
slice( payload.url splitBy(/[\/]/), 5,6 )[0]



//"999"