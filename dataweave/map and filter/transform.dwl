%dw 2.0
output application/json
---
payload map
    {
        EmpName: $.name,
        BossName: (payload filter ((item, index) -> $.bossID == item.ID)).name reduce ($++$$)
    }

/*
[
  {
    "EmpName": "123",
    "BossName": "456"
  },
  {
    "EmpName": "345",
    "BossName": "789"
  },
  {
    "EmpName": "456",
    "BossName": "345"
  },
  {
    "EmpName": "789",
    "BossName": "456"
  }
]
  */