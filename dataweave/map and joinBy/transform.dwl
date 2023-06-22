%dw 2.0
output application/json
var arr = [
    {
    "userid": "27517",
    "email": "jjosebadillo@hotmail.com"
    },
    {
    "userid": "27514",
    "email": "cmartin@cfiemail.com"
    },
    {
    "userid": "27515",
    "email": "philip.dupuis@td.com"
    }
]
---
payload map {
    courseCode:$.course_id,
    courseName:$.course_name,
    userStatus:$.enrollment_status,
    enrolledDate:$.enrollment_created_at,
    expirationDate:$.course_begin_date,
    CompletionDate:$.course_end_date,
    userID:$.user_id,
    email: arr filter ((item, index) -> $.user_id ~= item.userid) map ((item, index) -> item.email) joinBy ""

}