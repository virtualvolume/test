provider "google" {
  project = "terraform-274210"
  region  = "europe-north1"
  zone    = "europe-north1-b"
}

resource "google_compute_instance" "vm_instance" {
  name         = "hej"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20200326"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_firewall" "allow_ssh" {
    name    = "ssh"
    network = "default"

    allow {
        protocol = "tcp"
        ports    = ["22"]
    }
}


resource "google_compute_network" "default" {
  name = "test-network"
}
