# 🚀 TerraWeek Challenge – Day 06
## Advanced Terraform, Workspaces, Security Scanning & CI/CD

## 📌 Overview
Day 06 focused on advanced Terraform concepts and production best practices. I learned how to manage multiple environments using Terraform Workspaces, validate infrastructure with Terraform Test, perform security scanning using Trivy, and automate Terraform workflows using GitHub Actions.

---

## 🎯 Objectives
- Understand Terraform Workspaces
- Manage multiple environments
- Run Terraform fmt, validate and test
- Perform security scanning with Trivy
- Automate Terraform using GitHub Actions
- Follow Infrastructure as Code best practices

---

## 🛠 Technologies Used
- Terraform v1.11
- AWS
- GitHub Actions
- Trivy
- Git
- Ubuntu EC2

---

## 📂 Project Structure

```
Day06/
├── README.md
└── example
    ├── main.tf
    ├── providers.tf
    ├── variables.tf
    ├── versions.tf
    ├── outputs.tf
    ├── tests/
    │   └── basic.tftest.hcl
    └── .terraform.lock.hcl
```

---

## ✅ Task 1 – Terraform Workspaces

Created and managed multiple environments using workspaces.

Commands used:

```bash
terraform workspace list
terraform workspace new staging
terraform workspace select staging
terraform workspace show
```

Used `terraform.workspace` to provision different EC2 instance types based on the selected environment.

---

## ✅ Task 2 – Terraform Quality Checks

Executed Terraform quality commands:

```bash
terraform fmt -recursive
terraform validate
terraform test
```

Verified configuration formatting, validation, and native Terraform tests.

---

## ✅ Task 3 – Security Scanning

Performed Terraform security scanning using Trivy.

```bash
trivy config .
```

Identified security findings including:

- IMDSv2 not enforced
- Root volume encryption not enabled

Updated the Terraform configuration to follow AWS security best practices.

---

## ✅ Task 4 – GitHub Actions CI/CD

Created a GitHub Actions workflow to automate Terraform validation.

Pipeline performs:

- Checkout repository
- Install Terraform
- Terraform fmt
- Terraform init
- Terraform validate
- Terraform plan

Workflow location:

```
.github/workflows/terraform.yml
```

---

## 📋 Best Practices Followed

- Remote state management (Day04)
- Provider version pinning
- Module version pinning
- Reusable Terraform modules
- No hardcoded secrets
- Terraform fmt
- Terraform validate
- Terraform Test
- Trivy security scanning
- GitHub Actions automation
- Clean resource destruction using `terraform destroy`

---

## 📖 Key Learnings

- Terraform Workspaces simplify environment management.
- Terraform Test validates infrastructure behavior before deployment.
- Trivy helps detect infrastructure security issues.
- GitHub Actions enables automated Infrastructure as Code validation.
- Following Terraform best practices improves maintainability and security.

---

## 📚 Commands Used

```bash
terraform workspace list
terraform workspace new staging
terraform workspace select staging
terraform workspace show

terraform fmt -recursive
terraform validate
terraform test

trivy config .

terraform init
terraform plan
terraform apply
terraform destroy
```

---

## 📸 Screenshots

- Terraform Workspace
- Terraform Test
- Trivy Scan
- GitHub Actions Workflow
- Terraform Apply

---

## 🎯 Outcome

Successfully completed TerraWeek Day 06 by implementing Terraform Workspaces, automated testing, security scanning, and CI/CD using GitHub Actions while following Infrastructure as Code best practices.

---

## 🔗 Repository

https://github.com/bhagya2793/TerraWeek-challenge

---

### #TrainWithShubham #TerraWeekChallenge #Terraform #AWS #DevOps #IaC #GitHubActions #Trivy #CloudComputing
