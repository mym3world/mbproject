resource "google_storage_bucket" "state" {
  name          = var.state_bucket_name
  location      = var.bucket_location
  storage_class = "STANDARD"

  versioning { enabled = true }
  uniform_bucket_level_access = true
}