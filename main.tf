provider "google" {
  project = "terraform-274210"
  region  = "europe-north1"
  zone    = "europe-north1-b"
}

// First VM
resource "google_compute_instance" "gcp-vm01" {
 name         = "gcp-vm01"
 machine_type = "f1-micro"
 zone         = "europe-north1-a"
 boot_disk {
   initialize_params {
     image = "debian-10-buster-v20200326"
   }
 }
 network_interface {
   network = "default"
   }
}


// Second VM
resource "google_compute_instance" "gcp-vm02" {
 name         = "gcp-vm02"
 machine_type = "f1-micro"
 zone         = "europe-north1-a"

 boot_disk {
   initialize_params {
     image = "debian-10-buster-v20200326"
   }
 }
 network_interface {
   network = "default"
   }
}

