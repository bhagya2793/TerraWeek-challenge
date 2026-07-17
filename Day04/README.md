# TerraWeek Day 04 – Terraform State & Remote Backend

## Overview

This lab focuses on Terraform state management and configuring a remote backend using Amazon S3. It demonstrates how to securely store Terraform state remotely with versioning, encryption, and native state locking.

## Topics Covered

- Terraform State (`terraform.tfstate`)
- Local vs Remote State
- Amazon S3 Remote Backend
- Native S3 State Locking (`use_lockfile = true`)
- S3 Bucket Versioning
- Server-Side Encryption (AES256)
- Terraform State Commands
- Infrastructure Cleanup

## Project Structure

```
Day04/
├── backend_infra/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── versions.tf
│   └── outputs.tf
│
└── backend_demo/
    ├── main.tf
    ├── providers.tf
    ├── variables.tf
    ├── versions.tf
    └── outputs.tf
```

## Commands Executed

```bash
terraform init
terraform validate
terraform plan
terraform apply

terraform state list
terraform state show

terraform destroy
```

## Key Learnings

- Terraform state tracks deployed infrastructure.
- Remote state enables secure team collaboration.
- S3 backend centralizes state management.
- Native S3 locking prevents concurrent state modifications.
- Bucket versioning protects against accidental state loss.
- State files should never be committed to Git.

## AWS Services Used

- Amazon EC2
- Amazon S3
- IAM

## Outcome

- Successfully configured a remote backend using Amazon S3.
- Verified Terraform state was stored remotely.
- Practiced Terraform state inspection commands.
- Destroyed infrastructure after validation to avoid unnecessary AWS charges.
