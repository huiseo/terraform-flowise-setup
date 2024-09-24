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

Follow these steps to deploy Flowise using Terraform:

### 1. Clone the Repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/huiseo/terraform-flowise-setup.git
cd terraform-flowise-setup
```

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
```

### 3. Initialize Terraform

Before deploying the infrastructure, you need to initialize Terraform. This step downloads the necessary provider plugins and sets up the working directory.

```bash
terraform init
```

### 4. Review the Plan

Before applying changes, you can check what Terraform will do by reviewing the plan. This step allows you to see what resources will be created, modified, or destroyed without actually making any changes.

```bash
terraform plan
```

### 5. Apply the Plan

Once you are satisfied with the plan, you can apply it to create the AWS infrastructure. Terraform will prompt you to confirm the action.

```bash
terraform apply
```

### 6. View the Output

After Terraform completes the deployment, it will output the URL for the Flowise application. You can access the Flowise app in your browser using the provided URL.

### 7. Clean Up (Optional)

If you want to remove the infrastructure that Terraform created (to avoid incurring AWS charges), you can destroy the resources by running:

```bash
terraform destroy
```

## Notes

- Ensure your AWS CLI is configured properly with the right credentials. Run `aws configure` to set up your AWS access and secret keys.
- Terraform will create resources in the AWS region specified in the `variables.tf` file.
- You may incur AWS costs for the resources provisioned by this setup (VPC, ECS, NAT Gateway, etc.).
