# Terraform CI/CD Pipeline

This project demonstrates the use of **Terraform** with a CI/CD pipeline, originally designed for GitLab CI and portable to GitHub Actions. It manages AWS infrastructure and uses a remote backend (S3 + DynamoDB) to store the Terraform state securely.

##  Features

- Infrastructure as Code using **Terraform**
- AWS S3 backend for storing `.tfstate`
- DynamoDB for Terraform state locking
- CI/CD pipeline for:
  - `terraform validate`
  - `terraform plan`
  - `terraform apply`
  - `terraform destroy` (manual trigger)
- AWS credentials managed securely using CI/CD environment variables

## Remote Backend Setup (S3 & DynamoDB)

Ensure the following AWS resources exist **before running Terraform**:

-  **S3 Bucket**: `terraformmbucket251`
-  **DynamoDB Table**: `terraformbucket251` with `LockID` (String) as primary key

##  CI/CD Environment Variables Required

Set these in **GitLab CI/CD** or **GitHub Actions**:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_DEFAULT_REGION` (e.g., `us-east-1`)
- `GITLAB_ACCESS_TOKEN` (if using GitLab-specific workflows)


##  Running Locally

```bash
terraform init
terraform validate
terraform plan
terraform apply
