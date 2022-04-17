variable "access_key" {
    type = string
    default = "AKIAQQEAVGSG7WNZ6BE3"
    description = "access key for aws"
}


variable "secret_key" {
    type = string
    default = "v5UlSRxxNRxWS7AgpZ51Rzo67cby8oSw2YyS5fTW"
    description = "secret key for aws"
  
}


variable "ami" {
  type = string
  default = "ami-04505e74c0741db8d"
  description = "ami id for ec2"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "istance type for ec2"
}

variable cidr_block {
    type = string
    default = "192.10.0.0/16"
    description = "cidr block for vpc"

  
}

variable "cidr_block_subnet1" {
  type = string
  default = "192.10.15.0/24"
  description = "vpc id for subnet1"

}

variable "cidr_block_subnet2" {
    type = string
    default = "192.10.10.0/24"
    description = "vpc id for subnet2"
}
