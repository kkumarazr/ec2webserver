# webserverec2

#one of the ways for deploying or configuring webserver is using Terraform configuration to provision on AWS

#Terraform template

#creating ec2  instance for httpd webserver 

#defined security groups with ingress and egress (inbound and outbound traffic)

#defined ec2 resource with base ami details along with sg and parameterized 

#created key_name for user.pem

#installed http service with user data template through bash

#created the index.html with echo command and pointed to var/www/html though bash

#Access key and Security token of user are defined in aws configure for security

#initialize terraform for preparing the current directory to kee update with the configuration
#$terraform init

#run terraform plan to see changes that will be seen before provisioning
#$terraform plan

#run terraform apply to provision the resources with single command from the location of webserver.tf
#$terraform apply

#using terraform destroy command will destroy all the provisioned resources 
#$terraform destroy
