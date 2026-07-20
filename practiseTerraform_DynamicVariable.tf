provider "aws" {
    region "ca-central-1"
}
resource "aws_instance" "third" {
    ami = var.inst_ami
    instance_type = var.inst_type
    count = var.inst_count
}
tags = {
    Name = "test2"
}
resource "aws_s3_bucket" "thirdbucket" {
    bucket = "test2Bucket"
}
variable "inst_ami" {
}
variable "instance_type" {
}
variable "inst_count" {
}


#terraform apply -auto-approve -var="inst_ami=ami-0d3edbd2903961ec9" -var="inst_type=t3.micro" -var="inst_count=3"