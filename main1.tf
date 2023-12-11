provider "google" {
  credentials = file("C:/Users/samba/Desktop/json/rich-principle-403808-2e2c18753f24.json")
  project     = "rich-principle-403808"
  region      = "us-central1-a"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "my-unique-bucket-name"
  location = "us-central1-a"
}
