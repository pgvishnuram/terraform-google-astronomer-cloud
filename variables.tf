variable "dns_managed_zone" {
  type = string
}

variable "email" {
  type = string
}

variable "deployment_id" {
  type = string
}

variable "enable_istio" {
  default = true
  type    = bool
}

variable "zonal_cluster" {
  default = false
  type    = bool
}

variable "management_api" {
  default = "private"
  type    = string
}