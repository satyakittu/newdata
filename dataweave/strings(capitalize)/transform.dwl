%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    message:capitalize(payload.message),
    message2:capitalize(payload.message2),
    message3:capitalize(payload.message3)
}