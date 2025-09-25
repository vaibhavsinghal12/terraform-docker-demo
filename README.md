# Terraform Docker Demo

![Terraform](https://img.shields.io/badge/Terraform-v1.6-blue?logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-v24-blue?logo=docker&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Repo-black?logo=github&logoColor=white)

## Project Overview
This project demonstrates **Infrastructure as Code (IaC)** using **Terraform** to provision and manage a local **Docker container running Nginx**.  
It showcases hands-on skills in Terraform, Docker, and IaC best practices, including state management, workflow planning, and resource cleanup.

---

## Key Features
- Pulls the latest **Nginx Docker image**.
- Creates and runs a Docker container on port `8080`.
- Supports **plan, apply, and destroy** lifecycle using Terraform.
- Proper `.gitignore` to keep local state, logs, and reports private.
- Demonstrates **IaC best practices** for reproducible environments.

---

## Project Structure

| File | Description |
|------|-------------|
| `main.tf` | Terraform configuration to pull the Nginx image and create the container. |
| `.gitignore` | Excludes local Terraform state, logs, editor files, and PDF reports. |
| `README.md` | Project documentation (this file). |
| `TASK_3_Terraform_Report.pdf` | **Local report of completed task (not uploaded to GitHub).** |

---

## Prerequisites
- **Terraform** installed on your machine (v1.x recommended)
- **Docker** installed and running
- Basic knowledge of Terraform and Docker

---

## How to Use
1. **Initialize Terraform:**
```bash
terraform init

Review execution plan:
terraform plan

Apply configuration to provision Docker container:
terraform apply

Access Nginx in your browser at: http://localhost:8080

Destroy resources when done:
terraform destroy

Notes for HR / Reviewers
All IaC steps are reproducible on any system with Terraform and Docker installed.

PDF report is local only, demonstrating task completion and testing.

Code follows best practices for modularity, readability, and clean Git usage.

Skills Demonstrated
Terraform (IaC)

Docker container management

Git version control and repository management

Project documentation for clarity and professionalism

DevOps workflow understanding: init, plan, apply, destroy

Contact / Author
Ashok Jangid
GitHub: https://github.com/Aj4236
Email: Ajdevops65@gmail.com
