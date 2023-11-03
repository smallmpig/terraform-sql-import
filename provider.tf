##################################################################################
# CONFIGURATION
##################################################################################
terraform {
  required_version = ">=1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.40.0"
    }
  }
}

#variable "GOOGLE_CREDENTIALS" {}
##################################################################################
# PROVIDERS
##################################################################################
provider "google" {
  project = var.project_id
  region  = var.GCP_REGION
  #credentials = var.GOOGLE_CREDENTIALS
  # zone        = var.zone
}