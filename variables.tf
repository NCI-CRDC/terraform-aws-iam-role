variable "app" {
  type        = string
  description = "the name of the application expressed as an acronym"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "the target tier ('dev', 'qa', 'stage', or 'prod'.)"
  sensitive   = false

  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "nonprod"], var.env)
    error_message = "valid values are 'dev', 'qa', 'stage', 'prod', and 'nonprod'"
  }
}

variable "program" {
  type        = string
  description = "the program associated with the application"
  sensitive   = false

  validation {
    condition     = contains(["crdc", "ccdi", "ctos"], var.program)
    error_message = "valid values for program are 'crdc', 'ccdi', and 'ctos'"
  }
}

variable "description" {
  type        = string
  description = "description of the role"
}

variable "force_detach_policies" {
  type        = bool
  description = "force detaching any policies the role has before destroying it"
  default     = false
}

variable "path" {
  type        = string
  description = "path to the role"
  default     = null
}

variable "permissions_boundary" {
  type        = string
  description = "arn of the policy that is used to set the permissions boundary for the role"
}
