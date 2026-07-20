provider "aws" {
    region "ca-central-1"
}
resource "aws_instance" "fourth" {
    ami = var.inst_ami
    instance_type = var.inst_type
    count = var.inst_count
}
tags = {
    Name = "test3"
}
resource "aws_s3_bucket" "fourthbucket" {
    bucket = "test4Bucket"
}

#terraform apply -auto-approve -var-file="dev1Variable.tfvars"  