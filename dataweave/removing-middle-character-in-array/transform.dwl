%dw 2.0
output application/json
---
//my requirement is to remove the middle character from the array
payload map ((item, index) ->item  update {
    case name at .name -> do {
        var index=sizeOf(name)
        //it will print the size of name
        var removeindex= if(isEven(index)) -1 
        //it will give the index of the value and whenever the even number came it will do -1 or else it will print floor
            else
            floor(index/2)
    ---
    //if removeindex is equals to -1 it will print index number or else it will adding the names from the array
    if(removeindex == -1) 
    name
     else
     name[0 to (removeindex -1)] ++ name[(removeindex+1)to -1] 
    }
} )

