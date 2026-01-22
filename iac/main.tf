provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = "devops-challenge"
  format        = "DOCKER"
}

resource "google_service_account" "cr_sa" {
  account_id = "cloudrun-sa"
}

resource "google_cloud_run_service" "service" {
  name     = "devops-challenge"
  location = var.region

  template {
    spec {
      service_account_name = google_service_account.cr_sa.email
      containers {
        image = "placeholder"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
