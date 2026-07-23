provider "aws"{
    region = "us-east-2"
}
resource "aws_instance" "first"
{
    ami = “ami-078fe7ff43e10cf8c”
    instance_type = “t3.micro”
    count = 2
}
tags = {
    Name = "Dev1"
}
resource "aws_s3_bucket" "firstbucket"
{
    bucket = "lordBucket"
}