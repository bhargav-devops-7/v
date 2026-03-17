terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws" 
            version = "6.36.0"
        }
    }

    backend "s3" {
    bucket = "remote.state.86s.mod"
    key    = "vpc-module-test"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
} 

provider "aws" {
    region = "us-east-1"
}