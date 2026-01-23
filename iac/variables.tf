variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "default-project-sr-1"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-west1-c"
}

variable "service_name" {
  description = "Cloud Run service name"
  type        = string
  default     = "devops-challenge"
}

variable "image_url" {
  description = "Docker image URL for the Cloud Run service"
  type        = string
  default     = "sathurjan/devops-ass:0a745abfe804622a8de5e402ab596b4648099fd2"
}

variable "container_port" {
  description = "Container port for the Cloud Run service"
  type        = string
  default     = "8080"
}

variable "min_instance_count" {
  description = "Minimum number of instances for the Cloud Run service"
  type        = string
  default     = "0"
}