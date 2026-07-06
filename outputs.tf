output "storage_account_local_users" {
  description = "All storage_account_local_user resources"
  value       = azurerm_storage_account_local_user.storage_account_local_users
  sensitive   = true
}
output "storage_account_local_users_home_directory" {
  description = "List of home_directory values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.home_directory]
}
output "storage_account_local_users_name" {
  description = "List of name values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.name]
}
output "storage_account_local_users_password" {
  description = "List of password values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.password]
  sensitive   = true
}
output "storage_account_local_users_permission_scope" {
  description = "List of permission_scope values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.permission_scope]
}
output "storage_account_local_users_sid" {
  description = "List of sid values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.sid]
  sensitive   = true
}
output "storage_account_local_users_ssh_authorized_key" {
  description = "List of ssh_authorized_key values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.ssh_authorized_key]
}
output "storage_account_local_users_ssh_key_enabled" {
  description = "List of ssh_key_enabled values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.ssh_key_enabled]
}
output "storage_account_local_users_ssh_password_enabled" {
  description = "List of ssh_password_enabled values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.ssh_password_enabled]
}
output "storage_account_local_users_storage_account_id" {
  description = "List of storage_account_id values across all storage_account_local_users"
  value       = [for k, v in azurerm_storage_account_local_user.storage_account_local_users : v.storage_account_id]
}

