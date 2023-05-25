%dw 2.0
import dw::module::Multipart
import * from dw::util::Values
output multipart/form-data
---
{
  parts: {
    part1: Multipart::field({name:"csv", value: "sampleFile"}),
    file: Multipart::field ({name:"sftpFile", value: payload.^raw, mime: "application/csv", fileName:"sample.csv"}
        )
  }
} 