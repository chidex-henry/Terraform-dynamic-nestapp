# Host a Dynamic Ecommerce Website on AWS with Terraform (Nest Mart & Grocery Store)

I hosted and deployed a dynamic Ecommerce website on AWS with Terraform and an EC2 Instance in this project. Terraform is an open-source infrastructure as code (IaC) tool users use to create, change, and improve infrastructure. Using the Reference Architecture below, I created AWS services using Terraform. The AWS services created in this project include VPC with public and private subnets, NAT gateways, Security Groups, EC2 Instance connect endpoint, Relational Database Services (RDS), ALB, Simple Notification Service (SNS), ASG, and route 53


 ![image](https://github.com/chidex-henry/Terraform-dynamic-web-deploy/assets/77998377/e76c22d0-f56c-4b27-95bf-fc03d1ca8032)



 According to the reference architecture, the deployed processes and stages are summarized as follows: 

1.	GitHub Repository to store terraform infrastructures was created and cloned to my desktop. Changes pushed from the local Repository to the remote repository 

2.	An IAM user with programmatic access was created (access and secret access keys), called Terraform-user. Terraform used this IAM user’s credentials to create resources in the AWS environment. A permission policy (AdministratorAccess) was attached to this user directly in other to allow this user to create AWS resources. 

3.	Created a named profile (known as terraform-user) for the IMA user that allowed terraform to use the user’s credentials to authenticate with our AWS environment 

4.	An S3 bucket was created to store the terraform state file. The state file is a JSON file that stores information about the infrastructure configurations. The state file is named terraform.tfstate and stored in the S3 bucket named “chidex-terraform-remote-state1”


<img width="506" alt="image" src="https://github.com/chidex-henry/Terraform-dynamic-web-deploy/assets/77998377/140262e3-deec-428e-a0f0-e97909376041">


5.	A Dynamo Table was launched in other for the terraform to lock the state file. Locking the state file will prevent multiple users from making changes to the state file. The table was created in the management console and named “terraform-state-lock”


<img width="354" alt="image" src="https://github.com/chidex-henry/Terraform-dynamic-web-deploy/assets/77998377/325df81b-5dfa-41e2-820e-d07b2577014a">


<img width="502" alt="image" src="https://github.com/chidex-henry/Terraform-dynamic-web-deploy/assets/77998377/65276602-8c7a-4fbe-9e60-bb7983f80e4d">



6.	I created a tfvars file to store variable definitions/values. Since I have a large number of variables, I created tfvars file to help externalize the variable's definitions and make it easier to manage. 

7.	AWS S3 bucket (chidex-nest-sql-files) was created to store the SQL script (V1__nest.sql). The SQL script will be downloaded from the S3 bucket and migrated to the RDS.


<img width="509" alt="image" src="https://github.com/chidex-henry/Terraform-dynamic-web-deploy/assets/77998377/87e7be00-8e4f-4e34-9a70-368f955ffeb7">



8.	Configured AWS provider file (provider.tf) to establish a secure connection between Terraform and AWS. Also, a backend terraform file was provisioned to store the state file in s3 and lock with the dynamo table 

9.	Infrastructures were provisioned with terraform and the entire process was visualized in an AWS cloud environment, detailing the setup of VPCs, Subnets, Nat-Gateways, Security Groups, EC2 Instance Connect Endpoint, MySQL RDS, IAM Role (with S3 permissions), EC2 for Data Migration (to import SQL data into RDS), ALB, SNS topic, Route-53, and Record Set in Route-53

10.	 From the EC2 Instance, migrated the provided SQL script into the RDS database with Flyway. Installed and extracted flyway on the EC2 Instance, downloaded the SQL script from S3, and then migrated the SQL into the RDS 

11.	An Auto-Scaling Group provisioned to dynamically create EC2 Instances to make the website highly available, scalable, fault-tolerant, and elastic. The nest application codes were installed and configured in the ASG.  


12.	Finally, an output was created to print out all the attributes and to access the website URL using the registered domain name. The deployed website is shown below

<img width="1269" alt="Screen Shot 2023-09-25 at 10 49 18 PM" src="https://github.com/chidex-henry/Terraform-dynamic-web-deploy/assets/77998377/27b4de5e-de2b-41c7-b1a4-1229eeb84782">

















 


