# Multi-Cloud Terraform Setup

This repository contains Terraform configurations for setting up a multi-cloud environment across AWS, Azure, and GCP.

## Structure
- **modules/**: Contains reusable modules for AWS, Azure, and GCP.
- **aws/**: Contains the root configuration for AWS.
- **azure/**: Contains the root configuration for Azure.
- **gcp/**: Contains the root configuration for GCP.
- **scripts/**: Contains scripts for executing Terraform commands.

## Usage

### Prerequisites
- Terraform installed
- AWS, Azure, and GCP accounts with appropriate permissions
- Environment variables set for AWS, Azure, and GCP credentials

### Steps

1. **Navigate to the cloud provider directory (e.g., `aws/`, `azure/`, `gcp/`)**
   Example:
   cd aws/

## Modules: Each module contains the necessary resources to provision VPCs, subnets, security groups, virtual machines, and load balancers for the respective cloud provider.
## Variables can be customized in the terraform.tfvars file within each provider's directory.
	Example4AWS4AWS4AWS4AWS:
		aws_region = "ap-south-1"
		vpc_cidr = "10.0.0.0/16"
		subnet_cidr = "10.0.1.0/24"
		ami_id = "ami-0abcdef1234567890"
		instance_type = "t2.micro"

