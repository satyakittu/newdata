%dw 2.0
output application/json
var employees = payload.employees
var departments = payload.departments
---
employees 
    map ((employee) -> 
    {
        "id": employee.id,
        "name": employee.name,
        "dept": (departments filter ((dept) -> dept.ids contains employee.id) 
                          map ((dept) -> dept.dept))[0]
    })



/*
[
{
"id": "2",
"name": "Anand",
"dept": "dept2"
},
{
"id": "1",
"name": "Vivek",
"dept": "dept1"
},
{
"id": "3",
"name": "Ismail",
"dept": "dept1"
}.
]
*/