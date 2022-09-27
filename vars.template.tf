variable "project_root_rel_path" {
  description = "Relative path that points to the first parent of all the repos that build up the project. Example: '../..'"
  type        = string
  default     = "."
}

variable "cluster_name" {
  description = "The name for the cluster that is being created on eks"
  type        = string
  nullable    = false

  validation {
    condition     = var.cluster_name != "<cluster_name>"
    error_message = "tfvars `cluster_name` attribute has to be set to the desired cluster name"
  }
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "aws_profile" {
  type        = string
  description = "AWS profile to use"
}

variable "cluster_version" {
  type        = string
  description = "Version of the EKS cluster"
}

variable "mld" {
  type        = string
  description = "Mid-level domain"
}

variable "tld" {
  type        = string
  description = "Top-level domain"
}

variable "cluster_region" {
  type = string
}
