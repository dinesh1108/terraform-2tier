# Two-Tier AWS Infrastructure with Terraform

## Overview

Welcome to the Terraform project for deploying a Two-Tier architecture on AWS! This project adopts a modular and security-enhanced approach to create a scalable and maintainable infrastructure.


## Pre-requisites
Before diving into the infrastructure creation, make sure you have the following:

  - An AWS Account

  - Terraform installed on your local machine

  - AWS Access and Secret Access keys configured

  - Domain Name Configured manually and add the Name Servers to your Domain Provider

## Best practices
   **Store state files on remote location**
    - so let's first create an s3 bucket to save the state file on a remote location. in my case it is s3 but in yours, it might be different. so just head over to s3 and click on create 
      bucket button. give any name to your bucket and click on Create a bucket.

   **Try to keep versioning for backups**
    - You can enable versioning while creating a bucket but if you forget then select the bucket that you have just created and click on the Properties tab and on the top you will find 
      the option Bucket versioning. click on edit and enable it.

   **State-locking so that we can keep tfstate file consistent while working on a collaborative project**
    - please go to the dynamoDB service dashboard and click on create table button. Give your table name whatever you want but in Partition Key give the name LockID (NOTE: it is case 
      sensitive) coz then only dynamoDB will be able to lock the file and release the file. and then click on create table button. The locking system is just like the semaphore that we 
      have studied in the Operating system and here tfstate file is a critical section. so two processes should not access it simultaneously.

## Features

- **Modular Structure:** The project is organized into dedicated modules for each AWS service, promoting reusability and maintainability.
- **Security Focus:** Utilize IAM roles and policies to ensure a secure infrastructure.
- **Infrastructure as Code (IaC):** Deploy and manage your infrastructure using Terraform, enabling version control and reproducibility.
- **Service-Specific Modules:** Each module corresponds to a specific AWS service, allowing for targeted management.

## Getting Started

Follow these steps to deploy the Two-Tier architecture:

1. **Clone the Repository

   ```bash
   https://github.com/dinesh1108/terraform-2tier.git
   ```

2.  **Plan and Apply:**
    ```bash
    terraform init
    terraform plan -var-file="variable.tfvars" 
    terraform apply -var-file="variable.tfvars" --auto-approve
    ```

3. **Cleanup:**
When done the exploration, run the following to destroy the infrastructure
    ```bash
    terraform destroy -var-file="variable.tfvars" --auto-approve
    ```

## Project Highlights

- **VPC: The Foundation**: Create a robust Virtual Private Cloud (VPC) to establish a secure and isolated environment for your application.

- **Load Balancing Magic**: Harness the power of the Application Load Balancer (ALB) to intelligently distribute incoming traffic across multiple EC2 instances, ensuring optimal performance and high availability.

- **Auto Scaling Wonders**: Leverage the Auto Scaling Group to dynamically adjust the number of EC2 instances based on demand. This ensures your application scales seamlessly, providing resilience and cost efficiency.

- **Database Sorcery**: Dive into the world of managed databases with Amazon RDS. Easily deploy, scale, and manage relational databases without the operational overhead.

- **DNS Mastery**: Achieve domain registration and DNS management excellence with Amazon Route 53. Seamlessly connect your applications to the internet while ensuring high availability and low-latency responses.

- **Web Application Firewall (WAF) Protection**: Safeguard your applications from web exploits and ensure a secure user experience with AWS WAF, a web application firewall that helps protect your web applications from common web exploits.

- **Content Delivery Network (CDN) Acceleration**: Boost the delivery of your content globally with a Content Delivery Network. Accelerate load times, enhance user experience, and reduce latency using Amazon CloudFront.

- **SSL Certificate Management with ACM**: Ensure secure communication between your users and the application with Amazon Certificate Manager (ACM). Easily provision, manage, and deploy SSL/TLS certificates.

- **IAM for Robust Security**: Implement robust security measures with Identity and Access Management (IAM). Define granular permissions and access controls to secure your AWS resources.

- **Infrastructure as Code (IaC) Excellence**: Embrace Infrastructure as Code (IaC) with Terraform, facilitating the provisioning and management of AWS resources in a declarative and scalable manner.

These project highlights showcase the comprehensive AWS services integrated into the Two-Tier architecture, providing a solid foundation for your applications with security, scalability, and performance at the forefront.

