terraform {
    required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.10.0"
    }
  }   
}


provider "aws" {
  region = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = var.secret_key 
 }


 


 resource "aws_vpc" "myvpc" {
   cidr_block = "${var.cidr_block}"
   enable_dns_hostnames = true
   tags = {
     "Name" = "lokesh"
     Owner  = "lokeshreddy"
     environment = "prod"

   }
   
 }

 resource "aws_internet_gateway" "myvpcgw" {
      vpc_id = aws_vpc.myvpc.id
      tags = {
        "Name" = "lokesh.gateway"
      }
 }

resource "aws_subnet" "subnnet1-public" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "${var.cidr_block_subnet1}"
availability_zone = "us-east-1a"

tags = {
  "name" = "subnet1"
   }
}


resource "aws_subnet" "subnnet2-public" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "${var.cidr_block_subnet2}"
availability_zone = "us-east-1a"

tags = {
  "name" = "subnet2"
   }
}

resource "aws_instance" "lokesh" {
  # vpc_id = aws_vpc.myvpc.id
   ami          = "${var.ami}"
   instance_type = "${var.instance_type}"
   tags = {
     "Name" = "myinstance"
    }
 }