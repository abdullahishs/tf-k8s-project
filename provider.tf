terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.11.0"
    }
    aws = ">= 4.48.0"
  }
}

provider "kubernetes" {
    config_path    = "~/.kube/config"
}

provider "aws" {
  region = "eu-west-2"
}
