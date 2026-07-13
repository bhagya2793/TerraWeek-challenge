# 🚀 Day 01: Introduction to IaC & Terraform

This repository documents my progress for **Day 1 of the 7-Day Terraform Challenge**.

## 🎯 Learning Objectives

- Understand Infrastructure as Code (IaC) and its benefits over manual provisioning.
- Install Terraform and configure the development environment.
- Learn the core Terraform workflow and terminology.
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

Terraform is an open-source Infrastructure as Code tool by HashiCorp that allows users to define and provision infrastructure using **declarative configuration (HCL)**.

Key advantages:

- Declarative approach
- Provider-agnostic architecture
- Large ecosystem of providers and modules

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

