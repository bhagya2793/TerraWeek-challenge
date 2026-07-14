# 🧩 Day 02: HCL Deep Dive – Variables, Types & Expressions

**Date:** Monday, 13th July 2026

This repository documents my progress for **Day 2 of the 7-Day TerraWeek Terraform Challenge**.

Focused on making Terraform configurations **flexible, reusable, and maintainable** using HCL fundamentals.

---

## 🎯 Learning Objectives

✅ HCL blocks, arguments & expressions  
✅ Terraform variables with types, validation & sensitive values  
✅ Locals, outputs & built-in functions  
✅ Variable precedence  
✅ Docker-based infrastructure deployment using Terraform  

---

## 🧠 Key Concepts

### HCL Basics

Terraform uses declarative **HashiCorp Configuration Language (HCL)**.

Example:

```hcl
resource "docker_container" "web" {
  name = "nginx"
}
```

- **Block:** Defines Terraform objects  
- **Argument:** Assigns values  
- **Expression:** Creates dynamic values

---

## Variables & Data Types

Implemented:

- Primitive: `string`, `number`, `bool`
- Collections: `list`, `map`, `set`
- Structural: `object`, `tuple`

Added:

✅ Default values  
✅ Validation rules  
✅ Sensitive variables  

---

## Locals, Outputs & Functions

Used locals for reusable values:

```hcl
local.name_prefix
```

Practiced Terraform functions:

- `upper()`
- `merge()`
- `join()`

Used outputs to expose Terraform-managed values.

---

## 🐳 Hands-on: Docker Deployment

Deployed Nginx container using Docker provider.

Implemented:

✅ Variable-driven container configuration  
✅ Dynamic labels using dynamic blocks  
✅ Docker image management  
✅ Custom port mapping  

---

## ⚙️ Terraform Workflow

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

---

## 📂 Project Structure

```
Day02/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── terraform.tf
└── terraform.tfvars
```

---

## 📊 Variable Precedence

```
-var
 ↓
*.auto.tfvars
 ↓
terraform.tfvars
 ↓
TF_VAR_
 ↓
default
```

---

## ✅ Day 02 Completed

✔ HCL fundamentals  
✔ Variables & data types  
✔ Validation & sensitive data  
✔ Locals & outputs  
✔ Terraform functions  
✔ Docker provider deployment  

Next: **Terraform State Management, Remote Backend & State Locking** 🚀

#Terraform #IaC #DevOps #AzureDevOps #CloudEngineering #TerraWeekChallenge