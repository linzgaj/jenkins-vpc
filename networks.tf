#######
# VPC #
#######

resource "aws_vpc" "tf-vpc" {
  cidr_block       = "20.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "jenkins-vpc"
  }
}

##########
# Subnet #
##########

resource "aws_subnet" "jenkins-vpc-sub1" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "20.0.1.0/24"
  tags = {
    Name = "Jenkins VPC Subnet 1"
  }
}

resource "aws_subnet" "jenkins-vpc-sub2" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "20.0.2.0/24"
  tags = {
    Name = "Jenkins VPC Subnet 2"
  }
}
resource "aws_subnet" "jenkins-vpc-sub3" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "20.0.3.0/24"
  tags = {
    Name = "Jenkins VPC Subnet 3"
  }
}