output "storage_account_local_users_id" {
  description = "Map of id values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.id }
}
output "storage_account_local_users_home_directory" {
  description = "Map of home_directory values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.home_directory }
}
output "storage_account_local_users_name" {
  description = "Map of name values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.name }
}
output "storage_account_local_users_password" {
  description = "Map of password values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.password }
  sensitive   = true
}
output "storage_account_local_users_permission_scope" {
  description = "Map of permission_scope values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.permission_scope }
}
output "storage_account_local_users_sid" {
  description = "Map of sid values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.sid }
  sensitive   = true
}
output "storage_account_local_users_ssh_authorized_key" {
  description = "Map of ssh_authorized_key values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.ssh_authorized_key }
}
output "storage_account_local_users_ssh_key_enabled" {
  description = "Map of ssh_key_enabled values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.ssh_key_enabled }
}
output "storage_account_local_users_ssh_password_enabled" {
  description = "Map of ssh_password_enabled values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.ssh_password_enabled }
}
output "storage_account_local_users_storage_account_id" {
  description = "Map of storage_account_id values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.storage_account_id }
}

