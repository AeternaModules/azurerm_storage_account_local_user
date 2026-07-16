output "storage_account_local_users_id" {
  description = "Map of id values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_account_local_users_home_directory" {
  description = "Map of home_directory values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.home_directory if v.home_directory != null && length(v.home_directory) > 0 }
}
output "storage_account_local_users_name" {
  description = "Map of name values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_account_local_users_password" {
  description = "Map of password values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "storage_account_local_users_permission_scope" {
  description = "Map of permission_scope values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.permission_scope if v.permission_scope != null && length(v.permission_scope) > 0 }
}
output "storage_account_local_users_sid" {
  description = "Map of sid values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.sid if v.sid != null && length(v.sid) > 0 }
  sensitive   = true
}
output "storage_account_local_users_ssh_authorized_key" {
  description = "Map of ssh_authorized_key values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.ssh_authorized_key if v.ssh_authorized_key != null && length(v.ssh_authorized_key) > 0 }
}
output "storage_account_local_users_ssh_key_enabled" {
  description = "Map of ssh_key_enabled values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.ssh_key_enabled if v.ssh_key_enabled != null }
}
output "storage_account_local_users_ssh_password_enabled" {
  description = "Map of ssh_password_enabled values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.ssh_password_enabled if v.ssh_password_enabled != null }
}
output "storage_account_local_users_storage_account_id" {
  description = "Map of storage_account_id values across all storage_account_local_users, keyed the same as var.storage_account_local_users"
  value       = { for k, v in azurerm_storage_account_local_user.storage_account_local_users : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}

