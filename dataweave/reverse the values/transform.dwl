%dw 2.0
output application/json
import * from dw::core::Strings
 ---
{
    "ASCII Value":charCode(payload."ASCII Value"),
    "Char at ASCII":fromCharCode(payload."Char at ASCII" as Number)
}


/*
{
 "ASCII Value": 65,
 "Char at ASCII": "A"
}
*/