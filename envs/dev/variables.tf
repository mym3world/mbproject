variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "network_name" {
  description = "Name of the VPC"
  type        = string
  default     = "my-vpc"
}

variable "public_subnet_ip" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_ip" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "my-gke-cluster"
}

variable "node_machine_type" {
  description = "Machine type for GKE nodes"
  type        = string
  default     = "e2-medium"
}

variable "min_node_count" {
  description = "Minimum number of nodes"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Maximum number of nodes"
  type        = number
  default     = 3
}
