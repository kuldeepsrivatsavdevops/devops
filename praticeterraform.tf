provider "aws"{
    region = "us-east-2"
}
resource "aws_s3_bucket" "huhuhub"{
    bucket = "dev1bucket"
}
