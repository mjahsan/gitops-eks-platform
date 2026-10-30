terraform {
    required_version = ">= 1.5.0"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }

    cloud {
        organization = "personal-projects-org"

        workspaces {
            name = "gitops-eks-dev"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}