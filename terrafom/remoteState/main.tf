resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  lifecycle {
	  prevent_destroy = true
	}

  versioning {
    enabled = true
  }
}

terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket"
    key    = "my.tfstate"
    region = "ap-south-1"
  }
}