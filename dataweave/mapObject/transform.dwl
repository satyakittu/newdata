%dw 2.0
output application/json
---
payload mapObject ((value, key, index) ->(key):[{(value)}])



/*
{
  "1": [
    {
      "11": "abc",
      "22": "def"
    }
  ],
  "2": [
    {
      "3": "ghi",
      "4": "jkl"
    }
  ]
}
*/