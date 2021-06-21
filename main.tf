# TODO: Designate a cloud provider, region, and credentials
# My credentials are not shown for security reasons and I have configured it on my machine using AWS CLI
provider "aws" {
  region  = "us-east-1"
  }
resource "aws_vpc" "Udacity" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Udacity-VPC"
    }
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  count = var.instance_count
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.instance_name}-${count.index+1}"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
