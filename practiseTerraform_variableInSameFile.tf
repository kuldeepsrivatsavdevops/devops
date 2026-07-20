provider "aws" { 
    region "ca-central-1"
}
resource "aws_instance" "second" {
    ami = var.inst_ami
    instance_type = var.inst_type
    count = var.inst_count
}
tags = {
    Name = "test"
}
resource "aws_s3_bucket" "secondbucket" {
    bucket = "test1Bucket"
}
variable "inst_ami" {
    type = string
    default = ami-0d3edbd2903961ec9
}
variable "instance_type" {
    type = number
    default = t3.micro
}
variable "inst_count" {
    type = number
    default = 1
}