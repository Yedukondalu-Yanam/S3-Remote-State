terraform {
	backend "s3" {
	 bucket = "mybucket-kondalu-19882021"
	 key = "myapp/dev/terraform.tfstate"
	 region = "us-east-1"
	}
}
# variable
# Updates 2
variable "region" {
	default = "us-east-1"
}

provider "aws" {
	region = var.region
}

resource "aws_vpc" "main" {
	cidr_block = "10.0.0.0/16"
	instance_tenancy = "default"

	tags = {
	   Name = "TerraformRSDemo"
	}
}
