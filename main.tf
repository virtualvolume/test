provider "google" {
  project = "terraform-274210"
  region  = "europe-north1"
  zone    = "europe-north1-b"
}

// A single Google Cloud Engine instance
resource "google_compute_instance" "vm_instance" {
 name         = "test99"
 machine_type = "f1-micro"
 zone         = "europe-north1-a"

 boot_disk {
   initialize_params {
     image = "debian-10-buster-v20200326"
   }
 }

// Make sure flask is installed on all new instances for later steps
metadata_startup_script = "sudo apt install -y figlet ; hostname | figlet > /etc/motd"

 network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
 }
}

resource "google_compute_instance" "vm_instance100" {
 name         = "test100"
 machine_type = "f1-micro"
 zone         = "europe-north1-a"

 boot_disk {
   initialize_params {
     image = "debian-10-buster-v20200326"
   }
 }

// Make sure flask is installed on all new instances for later steps
metadata_startup_script = "sudo apt install -y figlet ; hostname | figlet > /etc/motd"

 network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
 }
}

