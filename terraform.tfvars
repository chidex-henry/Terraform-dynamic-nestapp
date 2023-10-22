#environment variables
region = "us-east-1"
project_name = "nestapp"
environment = "dev"

# # vpc variables
 vpc_cidr                     = "10.0.0.0/16"
 public_subnet_az1_cidr       = "10.0.0.0/24"
 public_subnet_az2_cidr       = "10.0.1.0/24"
 private_app_subnet_az1_cidr  = "10.0.2.0/24"
 private_app_subnet_az2_cidr  = "10.0.3.0/24"
 private_data_subnet_az1_cidr = "10.0.4.0/24"
 private_data_subnet_az2_cidr = "10.0.5.0/24"

 # # rds variables
 multi_az_deployment          = "false"
 database_instance_identifier = "dev-rds-db"
 database_password            = "Chidexhenrytee"
 database_instance_class      = "db.t2.micro"
 publicly_accessible          = "false"

 #application load balancer variable 
 ssl_certificate_arn = "arn:aws:acm:us-east-1:542800976448:certificate/b09c5ccc-562d-4c4b-9a80-872b5542f277"

 #record set in route 53
 domain_name = "chidiukaegbu.com"
 record_name = "www"

 #sns topic variables
 operator_email = "chidex.ukaegbu4real@gmail.com"