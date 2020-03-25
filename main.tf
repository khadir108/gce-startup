provider "google" {
 # credentials = file("terraform.json")
  project = "hip-plexus-238517"
  region  = "us-central1"
  
}

resource "google_compute_instance" "vm-instance" {
  name         = "target-vm"
  machine_type = "f1-micro"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
