resource "aws_s3_bucket" "venkys3" {
    bucket = "venkypractice"
    acl = "private"
    
    lifecycle_rule {
    id      = "log"
    enabled = true

    prefix = "log/"

    tags = {
      "rule"      = "log"
      "autoclean" = "true"
    }

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }

    expiration {
      days = 90
    }
}
    tags = {
        Name = "Venky Education"
        Environment = "Dev"
    }
    versioning {
        enabled = true
    }
}