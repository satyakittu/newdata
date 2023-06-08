%dw 2.0
output application/json
---

    //first method

result: payload.result map ((item, index) ->
{
        Id: item.Id,
        Name: item.Name,
        message: item.errors.message reduce $
}) filter ((value, index) -> value.message != null )


    //second method

/*
result:payload.result map ((item, index) ->
{
    (item.errors map ((i1, ind1) ->
    {
        Id: item.Id,
        Name: item.Name,
        message: i1.message
    }))
}) -- [{}]
*/