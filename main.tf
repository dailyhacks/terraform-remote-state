# Proveedor
provider "google" {
  version = "3.32.0"

  # ID del proyecto en GCP
  project = "<PROJECT_ID>"
  region  = "us-central1"
  zone    = "us-central1-c"
}

# Configuración de estado remoto
terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-dh-prod"
    prefix  = "terraform/state"
  }
}

resource "google_pubsub_topic" "sample_topic" {
  name = "sample-topic"
}