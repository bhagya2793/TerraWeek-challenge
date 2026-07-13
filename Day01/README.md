Date: Sunday, 12th July 2026

# 🚀 Day 01: Introduction to IaC & Terraform

This repository documents my progress for **Day 1 of the 7-Day Terraform Challenge**.

---

## 🎯 Learning Objectives

- Understand Infrastructure as Code (IaC) and its benefits over manual provisioning.
- Install Terraform and configure the development environment.
- Learn the core Terraform workflow and important terminology.
- Provision resources using Terraform local and random providers without cloud cost.

---

# 📝 Task 1: Understanding Infrastructure as Code (IaC)

## What is IaC?

Infrastructure as Code (IaC) is the practice of managing and provisioning infrastructure using **code-based configuration files instead of manual cloud console operations**.

IaC helps achieve:

- ✅ Automation and repeatability
- ✅ Environment consistency
- ✅ Version-controlled infrastructure changes
- ✅ Reduced manual errors and configuration drift

---

## Why Terraform?

Terraform is an open-source Infrastructure as Code tool by **HashiCorp** that allows users to define and provision infrastructure using **declarative configuration (HCL)**.

### Key Advantages:

- ✅ Declarative approach
- ✅ Provider-agnostic architecture
- ✅ Large ecosystem of providers and reusable modules

---

## Terraform vs Alternatives

| Tool | Comparison |
|------|------------|
| **OpenTofu** | Open-source Terraform fork maintaining compatibility |
| **Pulumi** | IaC using programming languages like Python, TypeScript, and Go |
| **CloudFormation** | AWS-native IaC solution limited to AWS resources |
| **Ansible** | Configuration management and automation tool focused on system tasks |

---

# 🧠 Task 2 & 3: Terraform Setup & Terminologies

## Terraform Installation Verification

Verified Terraform installation using:

```bash
terraform version

terraform -help
```

Terraform environment was successfully configured with VS Code Terraform extension for syntax highlighting and autocomplete.

---

## Core Terraform Terminologies

| Term | Description |
|------|------------|
| **Provider** | Plugin that allows Terraform to interact with cloud platforms and APIs |
| **Resource** | Infrastructure component managed by Terraform |
| **State** | Terraform's source of truth stored in `terraform.tfstate` |
| **Plan** | Preview of infrastructure changes before execution |
| **HCL** | HashiCorp Configuration Language used to write Terraform code |
| **Module** | Reusable collection of Terraform configurations |

---

# 🚀 Task 4: Hands-on Terraform Implementation

Implemented Terraform configuration using:

- **Local Provider**
- **Random Provider**

No cloud account or credentials were required.

---

## Terraform Core Workflow

### 1. Initialize Terraform

```bash
terraform init
```

Initializes the Terraform working directory and downloads required provider plugins.

---

### 2. Format Terraform Code

```bash
terraform fmt
```

Formats Terraform configuration files according to standard HCL formatting.

---

### 3. Validate Configuration

```bash
terraform validate
```

Validates Terraform configuration syntax and checks for errors.

---

### 4. Preview Infrastructure Changes

```bash
terraform plan
```

Displays the resources Terraform will create or modify before deployment.

---

### 5. Provision Resources

```bash
terraform apply
```

Executes the Terraform plan and creates the defined resources.

**Verification:**

```bash
cat greeting.txt
```

Successfully verified the Terraform-generated file.

---

### 6. Cleanup Resources

```bash
terraform destroy
```

Removes all Terraform-managed resources and cleans up the environment.

---

# 📂 Project Structure

```
Day01/
│
├── README.md
│
└── example/
    ├── main.tf
    └── providers.tf
```

---

# ✅ Day 01 Key Takeaways

- Learned Infrastructure as Code fundamentals.
- Understood Terraform architecture and workflow.
- Installed and configured Terraform environment.
- Created first Terraform configuration using local providers.
- Executed Terraform lifecycle commands: init, fmt, validate, plan, apply, and destroy.