resource "aws_s3_bucket" "lifecycle" {
  bucket = "leonardodebs2022-lifecycle"

  lifecycle {
    #create_before_destroy = true
    #prevent_destroy = true
    ignore_changes = [tags, ]
  }
  tags = {
    aula = "lifecycle"
  }

}




