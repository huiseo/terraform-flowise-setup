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

### 2. Modify Variables

Open the `variables.tf` file in a text editor to customize the AWS region and resource name prefix. You can modify the following variables:

- **`region`**: Set the AWS region where you want to deploy the resources. The default is `ap-northeast-2` (Seoul). Example values: `us-west-2`, `us-east-1`.
- **`stage`**: This is a prefix for naming AWS resources. You can change this based on your environment. The default is `flowise`.

For example, to deploy in the `us-east-1` region with a prefix of `prod`, modify `variables.tf` as follows:

```hcl
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "stage" {
  description = "Prefix for resource names"
  type        = string
  default     = "prod"
}
