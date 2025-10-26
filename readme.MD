# AWS EC2 instance creation

This module creates EC2 Instance

# inputs

* ami_id -- (optional) Default value is ''' ami-09c813fb71547fc4f ''', if you didn't give the default then it is mandate
* instance_type -- (mandate) user can select the t3.micro or small or medium
* sg_id --- (mandate) user can give the security group id
* tags --- (optional) user can supply the tags to the EC2 instance

# outputs

* public_ip -- public IP created by the EC2 Instance
* private_ip -- private IP created by the EC2 instance
* instance_id -- instance Id Created by the EC2 Instance
