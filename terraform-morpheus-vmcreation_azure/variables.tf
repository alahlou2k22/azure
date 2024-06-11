variable "client_id" {
  type        = string
  default     = null
  description = "Client id used for provider to connect to azure"
  sensitive   = true
}

variable "client_secret" {
  type        = string
  default     = null
  description = "Client secret used for provider to connect to azure"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  default     = null
  description = "Azure tenant ID"
  sensitive   = true
}
