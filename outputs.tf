output "example_resource_group" {
  value = azurerm_resource_group.example_resource_group.name
}

output "subscription_id" {
  value       = var.subscription_id
  description = "Azure Subscription ID."
}

output "tenant_id" {
  value       = var.tenant_id
  description = "Azure Tenant ID."
}

output "client_id" {
  value       = var.client_id
  description = "Azure Client ID."
}

output "client_secret" {
  value       = var.client_secret
  description = "Azure Client Secret."
}