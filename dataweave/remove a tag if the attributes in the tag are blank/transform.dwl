%dw 2.0
output application/xml
import * from dw::core::Objects
 
fun checkCondition(data) = sizeOf(data.@ filterObject ((value, key, index) -> isEmpty(value))) > 0
 
fun mappingObject(data) = data mapObject ((value, key, index) -> 
    value match {
        case value is Object -> (key) : mappingObject(value)
        case value is Array -> (key) : value map (mappingObject($))
        else -> ((key)  :  value) if(!checkCondition(value))
    }
)
---
mappingObject(payload)


/*
    <product variation Hinban="V-HINBAN" hinban="P-HINBAN">
    	<spec>
    		<group name="4K LCD TV" >
    			<group name="Video">
    				<attribute name="Panel" value="1997135874"/>
    			</group>
    		</group>
    		<attribute name="Other notes" value="1997135876"/>
    	</spec>
    </product>
*/