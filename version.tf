terraform {
  required_providers {
    g42cloud = {
      source  = "g42cloud-terraform/g42cloud"
      version = ">= 1.3.0"
    }
  }

  # cloud {
  #   organization = "TecBrix"

  #   workspaces {
  #     name = "ecommerce-dev"
  #   }
  # }
}