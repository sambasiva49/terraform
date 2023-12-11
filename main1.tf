provider "google" {
  credentials = "default"
  project     = "rich-principle-403808"
  region      = "us-central1-a"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "my-unique-bucket-name"
  location = "us-central1-a"
}

