terraform {
  required_providers {
    clouding = {
      source  = "clouding/clouding"
      version = "0.2.2"
    }
  }
  required_version = ">= 1.3.0"
}

provider "clouding" {
  api_token = var.api_token
}
