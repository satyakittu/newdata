%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.ParentOptionID) mapObject 
($$):$.OptionName


/*
{
'47' : ['IBM Power Series', 'Datamatic-SPMR'] ,

'48' : ['Ovation', 'Other SCADA Tools']
}
*/