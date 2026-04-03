# 🚀 Highly Available Web Application on AWS (Simulated with Terraform)

## 📌 Project Overview

This project demonstrates a **production-grade, highly available cloud architecture** built using Infrastructure as Code (Terraform), without using the AWS Management Console.

The architecture simulates a real-world AWS environment focusing on:

* High Availability (Multi-AZ)
* Security (Private Subnets + Security Groups)
* Scalability (Auto Scaling Group)
* Performance Optimization (CloudFront CDN)
* Observability (CloudWatch Monitoring)

---

## 🏗️ Architecture

### 🔁 Request Flow

User → Route 53 → CloudFront → ALB → EC2 (Auto Scaling) → RDS

---

## 🔧 Services Used

* Amazon VPC (Custom networking)
* Amazon EC2 (Compute layer)
* Elastic Load Balancer (Application Load Balancer)
* Auto Scaling Group (High availability & elasticity)
* Amazon RDS (Multi-AZ database)
* NAT Gateway (Secure outbound access)
* Route 53 (DNS routing)
* CloudFront (Content delivery network)
* CloudWatch (Monitoring & logging)
* IAM Roles (Secure access control)

---

## 🌐 Network Design

### Public Subnets

* Application Load Balancer (ALB)
* NAT Gateways
* Internet Gateway access

### Private Subnets

* EC2 instances (Auto Scaling Group)
* RDS (Primary + Standby)

---

## 🔐 Security Architecture

* ALB Security Group → Allows HTTP/HTTPS from internet
* EC2 Security Group → Allows traffic only from ALB
* RDS Security Group → Allows MySQL access only from EC2
* IAM Role → Secure access to AWS services

---

## 📊 Monitoring & Observability

CloudWatch is used to monitor:

* ALB metrics 
* EC2 logs and CPU usage
* Auto Scaling events
* RDS performance metrics

---

## ⚙️ Infrastructure as Code

All infrastructure is defined using Terraform:

```
terraform/
├── provider.tf
├── vpc.tf
├── ec2.tf
├── alb.tf
├── autoscaling.tf
├── rds.tf
├── cloudfront.tf
└── monitoring.tf
```

---

## 🧪 Local Simulation

This project uses LocalStack to simulate AWS services locally.

### Start LocalStack

```
docker run -p 4566:4566 localstack/localstack
```

### Terraform Commands

```
terraform init
terraform validate
terraform plan
terraform apply
```

---

## 🎯 Key Features

✅ Multi-AZ high availability
✅ Secure private architecture
✅ Scalable compute layer
✅ CDN for performance optimization
✅ Monitoring and alerting
✅ Fully automated with Terraform

---

## 💡 What I Learned

* Designing real-world AWS architectures
* Implementing secure networking (VPC, NAT, subnets)
* Using Terraform for infrastructure automation
* Applying high availability and fault tolerance principles
* Observability using CloudWatch

---

## 📂 Project Structure

```
aws-highly-available-webapp/
│
├── terraform/
├── app/
│   └── index.html
└── README.md
```

---

## 📸 Architecture Diagram

![image alt](https://github.com/JoyMaps/aws-highly-available-webapp-terraform/blob/2a47a5cba0abc14393c7a1ac94b4e1d0e6baa243/Copy%20of%20finalHighlyAvailableArchitect-Page-1.drawio.png)

---

## 📬 Contact

* LinkedIn: https://www.linkedin.com/in/joyline-mapangire-1195a083
* Email: [joylinemapangire@gmail.com](mailto:joylinemapangire@gmail.com)

---

## 🚀 Open to Opportunities

I am currently seeking **remote Cloud Engineering / AWS roles**.

Feel free to connect!
