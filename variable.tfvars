# VPC
VPC-NAME         = "Two-Tier-VPC"
VPC-CIDR         = "20.0.0.0/16"
IGW-NAME         = "Two-Tier-Interet-Gateway"
PUBLIC-CIDR1     = "20.0.1.0/24"
PUBLIC-SUBNET1   = "Two-Tier-Public-Subnet1"
PUBLIC-CIDR2     = "20.0.2.0/24"
PUBLIC-SUBNET2   = "Two-Tier-Public-Subnet2"
PRIVATE-CIDR1    = "20.0.3.0/24"
PRIVATE-SUBNET1  = "Two-Tier-Private-Subnet1"
PRIVATE-CIDR2    = "20.0.4.0/24"
PRIVATE-SUBNET2  = "Two-Tier-Private-Subnet2"
EIP-NAME1        = "Two-Tier-Elastic-IP1"
EIP-NAME2        = "Two-Tier-Elastic-IP2"
NGW-NAME1        = "Two-Tier-NAT1"
NGW-NAME2        = "Two-Tier-NAT2"
PUBLIC-RT-NAME1  = "Two-Tier-Public-Route-table1"
PUBLIC-RT-NAME2  = "Two-Tier-Public-Route-table2"
PRIVATE-RT-NAME1 = "Two-Tier-Private-Route-table1"
PRIVATE-RT-NAME2 = "Two-Tier-Private-Route-table2"

# SECURITY GROUP
ALB-SG-NAME = "Two-Tier-alb-sg"
WEB-SG-NAME = "Two-Tier-web-sg"
DB-SG-NAME  = "Two-Tier-db-sg"

# RDS
SG-NAME      = "two-tier-rds-sg"
RDS-USERNAME = "admin"
RDS-PWD      = "Admin1234"
DB-NAME      = "mydb"
RDS-NAME     = "Two-Tier-RDS"

# ALB
TG-NAME  = "Web-TG"
ALB-NAME = "Web-elb"

# IAM
IAM-ROLE              = "iam-role-for-ec2-SSM"
IAM-POLICY            = "iam-policy-for-ec2-SSM"
INSTANCE-PROFILE-NAME = "iam-instance-profile-for-ec2-SSM"

# AUTOSCALING
AMI-NAME             = "New-AMI"
LAUNCH-TEMPLATE-NAME = "Web-template"
ASG-NAME             = "Two-Tier-ASG"


# CLOUDFRONT
DOMAIN-NAME = "awsserver.xyz"
CDN-NAME    = "Two-Tierr-CDN"

# WAF
WEB-ACL-NAME = "Two-Tierr-WAF"


