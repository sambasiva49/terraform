##provider "google" {

  project     = "rich-principle-403808"  # Specify your GCP project ID
  region      = "us-central1-a"  # Set your desired GCP region
}

resource "google_compute_instance" "example" {
  name         = "example-instance"
  machine_type = "n1-standard-1"  # Specify an appropriate machine type

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-10-buster-v20220111"  # Specify an appropriate GCP image
    }
  }

  network_interface {
    network = "default"  # Specify the network name
  }
}
