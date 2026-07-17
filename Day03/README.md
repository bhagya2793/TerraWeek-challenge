# ☁️ TerraWeek Day 03 – AWS Infrastructure with Terraform

## 📌 Overview
Built a complete AWS infrastructure using Terraform by configuring providers, data sources, and core networking components. Deployed an EC2 instance with Nginx installed automatically using `user_data`.

## 🚀 Resources Created
- VPC
- Public Subnet
- Internet Gateway
- Route Table & Association
- Security Group
- EC2 Instance (Amazon Linux 2023)
- Nginx Web Server

## 📂 Project Files
```
example/
├── main.tf
├── providers.tf
├── versions.tf
├── variables.tf
└── outputs.tf
```

## 🏗️ Architecture
```
Internet
   │
Internet Gateway
   │
Route Table
   │
Public Subnet
   │
Security Group (22,80)
   │
EC2 Instance
   │
Nginx
```

## 📚 Terraform Concepts
- Provider Configuration
- Version Pinning
- Variables
- Data Sources
- Resources
- Outputs
- Lifecycle (`create_before_destroy`)

## ⚙️ Commands Used
```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform state list
terraform destroy
```

## ✅ Outcome
- Successfully provisioned AWS infrastructure using Terraform.
- Installed Nginx automatically with `user_data`.
- Verified the application using the EC2 Public IP.

## 📸 Screenshots
- Terraform Apply Output
- AWS Console Resources
- EC2 Instance
- Nginx Web Page