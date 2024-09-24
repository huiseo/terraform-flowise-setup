# Flowise Terraform Deployment on AWS

This repository contains Terraform configuration files (`main.tf` and `variables.tf`) to deploy Flowise on AWS infrastructure. It sets up VPC, subnets, ECS cluster, and other necessary components to run Flowise in an AWS environment.

## Repository URL

You can view this repository at: [https://github.com/huiseo/terraform-flowise-setup](https://github.com/huiseo/terraform-flowise-setup)

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (version 1.0 or higher)
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured with your AWS credentials.
- An AWS account with sufficient permissions to create resources (VPC, ECS, subnets, etc.).

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/huiseo/terraform-flowise-setup.git
cd terraform-flowise-setup
