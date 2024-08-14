terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.62.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.2"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.4"
    }
  }

  required_version = "~> 1.9.0"

  # Example of remote state configuration
  # Uncomment and configure the backend block below to use a remote backend for storing Terraform state.

  #   backend "s3" {
  #     bucket         = "demo-app-tf-state"                   # Replace with your S3 bucket name
  #     key            = "EW_test-task_2024/terraform.tfstate" # Path within the bucket to store the state file
  #     region         = "eu-north-1"                          # AWS region where your S3 bucket is located
  #     encrypt        = true                                  # Encrypt the state file
  #     dynamodb_table = "lock-table-EWtest-task-2024"         # Optional: DynamoDB table for state locking
  #   }

  # Note: 
  # - Ensure that the S3 bucket and DynamoDB table (if used) exist before uncommenting this block.
  # - Using a remote backend is a best practice for managing Terraform state in a team environment.
}
