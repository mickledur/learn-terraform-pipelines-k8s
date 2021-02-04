terraform {
  backend "remote" {
    organization = "agarik-vault-test"

    workspaces {
      name = "agarik-vault-test-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
