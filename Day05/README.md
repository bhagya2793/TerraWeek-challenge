# TerraWeek Challenge – Day 05: Terraform Modules

## 📌 Overview
Day 05 focused on building reusable and scalable infrastructure using Terraform Modules. I created a custom EC2 module, instantiated multiple resources using `for_each`, and consumed the official AWS VPC module from the Terraform Registry with version pinning.

## 🎯 Learning Objectives
- Understand Root Module vs Child Module
- Create reusable Terraform modules
- Pass variables and outputs between modules
- Deploy multiple resources using `for_each`
- Consume Terraform Registry modules
- Pin module versions for consistent deployments

## 🛠️ Tasks Completed

### ✅ Task 1 – Module Fundamentals
- Learned the purpose and benefits of Terraform modules
- Understood module structure and best practices

### ✅ Task 2 – Local Module
Created a reusable EC2 module with:
- `main.tf`
- `variables.tf`
- `outputs.tf`
- `README.md`

Deployed an EC2 instance using the custom module.

### ✅ Task 3 – Module Composition
Used `for_each` to provision multiple EC2 instances from the same reusable module.

### ✅ Task 4 – Terraform Registry Module
Used the official AWS VPC module from the Terraform Registry.

Configured:
- VPC
- Public Subnets
- Internet Gateway
- Route Tables

Pinned module version:

```hcl
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"
}
```

### ✅ Task 5 – Module Versioning
Learned different ways to lock module versions:
- Terraform Registry (`version`)
- Git Tag (`?ref=v1.0.0`)
- Git Commit SHA (`?ref=<commit-sha>`)

## 📂 Project Structure

```
Day05/
├── example/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── versions.tf
│   └── modules/
│       └── ec2_instance/
│           ├── main.tf
│           ├── variables.tf
│           ├── outputs.tf
│           └── README.md
│
└── registry_module/
    ├── main.tf
    ├── providers.tf
    ├── variables.tf
    ├── outputs.tf
    └── versions.tf
```

## 💡 Key Concepts Learned
- Root Module vs Child Module
- Reusable Infrastructure
- Module Inputs & Outputs
- Module Composition using `for_each`
- Terraform Registry
- Module Version Pinning
- Infrastructure Reusability
- Best Practices for Modular Terraform

## 🧹 Cleanup
Destroyed all resources after testing using:

```bash
terraform destroy
```

## 🚀 Outcome
Successfully implemented reusable Terraform modules, deployed infrastructure using local and registry modules, and learned module versioning best practices for scalable Infrastructure as Code.
