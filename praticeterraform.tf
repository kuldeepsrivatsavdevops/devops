provider "aws"{
    region "ca-central-1"
}
resource "aws_instance" "first"{
    ami = "ami-0d3edbd2903961ec9"
    instance_type = "t3.micro"
    count = 2
}
tags = {
    Name = "Dev1"
}
resource "aws_s3_bucket" "firstbucket"{
    bucket = "dev1Bucket"
}
