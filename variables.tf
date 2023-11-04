# environment variables
variable "region" {
  description = "region to create resources"
  type        = string
}

variable "project_name" {
  description = "project name"
  type        = string
}

variable "environment" {
  description = "environment"
  type        = string
}

#vpc variables 

# for vpc cidr block 
variable "vpc_cidr" {
    description    = "vpc cidr block"
    type           = string
}

#variable for the public subnet in AZ1
variable "public_subnet_az1_cidr" {
    description    = "public subnet az1 cidr block"
    type           = string
}

variable "public_subnet_az2_cidr" {
    description = "public subnet az2 cidr block"
    type        = string
}


#variable for the private app subnet in AZ1
variable "private_app_subnet_az1_cidr" {
    description    = "private app subnet az1 cidr block"
    type           = string
}

#variable for the private app subnet in AZ2
variable "private_app_subnet_az2_cidr" {
    description    = "private app subnet az2 cidr block"
    type           = string
}


#variable for the private data subnet in AZ1
variable "private_data_subnet_az1_cidr" {
    description    = "private data subnet az1 cidr block"
    type           = string
}

#variable for the private data subnet in AZ2
variable "private_data_subnet_az2_cidr" {
    description    = "private data subnet az2 cidr block"
    type           = string
}

# rds variables
variable "multi_az_deployment" {
    description = "create a standby db instance"
    type        = bool
}

variable "database_instance_identifier" {
    description    = "the database instance identifier"
    type           = string
}

variable "database_password" {
    description    = "the database password"
    type           = string
}

variable "database_instance_class" {
    description    = "the database instance type"
    type           = string
}

 variable "publicly_accessible" {
    description = "controls if instance is publicly accessible"
    type        = bool
}

#application load balancer variable 
variable "ssl_certificate_arn" {
    description    = "ssl certificate arn"
    type           = string
}


# Route 53 variables 
variable "domain_name" {
    description    = "domain name"
    type           = string
}

variable "record_name" {
    description    = "sub domain name"
    type           = string
}

#sns topic variable 
variable "operator_email" {
    description    = "a valid email address"
    type           = string
}

#auto scaling group variables 
variable "ec2_image_id" {
    description    = "id of the ami"
    type           = string
}

variable "ec2_instance_type" {
    description    = "the ec2 instance type"
    type           = string
}

#ec2 instance migrate 
variable "ec2_migrate_ami" {
    description    = "id of the ami ec2 migrate"
    type           = string
}

#iam role profile 
variable "aws_iam_instance_profile_name" {
    description    = "iam instance profile name"
    type           = string
}










