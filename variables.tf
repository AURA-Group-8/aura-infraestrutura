variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID."
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID."
}

variable "client_id" {
  type        = string
  description = "Azure Client ID (Application ID)."
}

variable "client_secret" {
  type        = string
  description = "Azure Client Secret (Application Secret)."
}

variable "jwt_secret" {
  type        = string
  description = "JWT Secret for the backend application."
}
variable "twilio_sid" {
  type        = string
  description = "Twilio SID for sending SMS."
}
variable "twilio_auth" {
  type        = string
  description = "Twilio Auth Token for sending SMS."
}
variable "email_username" {
  type        = string
  description = "Email username for sending emails."
}
variable "email_password" {
  type        = string
  description = "Email password for sending emails."
}