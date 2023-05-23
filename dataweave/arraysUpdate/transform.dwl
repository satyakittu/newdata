%dw 2.0
output application/json 
import update from dw::util::Values
---
 payload update ["message","template","custom", "substitutions"] with (
    (($ default []) as Array) map ( 
        if ($.key == "lastActionDate")
            $ update "value" with $ as DateTime as DateTime {format : "yyyy-MM-dd HH:mm:ss"}
        else
           $
    )
)