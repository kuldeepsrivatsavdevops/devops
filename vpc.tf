# Deploy a standard, multi-AZ VPC
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "Dev1-vpc"
  cidr = "10.0.0.0/16"

  # Define Availability Zones and Subnet Layout
  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  # Enable NAT Gateways for Private Subnets
  enable_nat_gateway = true
  single_nat_gateway = true # Set to false for high-availability production

  # Enable DNS Hostnames
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "Dev1"
  }
}

# Output the VPC ID for reference in other files
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
