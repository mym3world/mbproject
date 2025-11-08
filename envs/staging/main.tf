resource "google_storage_bucket" "state" {
  name          = var.state_bucket_name
  location      = var.bucket_location
  storage_class = "STANDARD"

  versioning { enabled = true }
  uniform_bucket_level_access = true
}


resource "google_compute_network" "this" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public" {
  count                  = 2
  name                   = "public-${count.index + 1}"
  ip_cidr_range          = var.public_subnet_cidrs[count.index]
  region                 = var.regions[count.index]
  network                = google_compute_network.this.id
  private_ip_google_access = false
}
