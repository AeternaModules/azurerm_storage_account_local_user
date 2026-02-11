variable "storage_account_local_users" {
  description = <<EOT
Map of storage_account_local_users, attributes below
Required:
    - name
    - storage_account_id
Optional:
    - home_directory
    - ssh_key_enabled
    - ssh_password_enabled
    - permission_scope (block):
        - permissions (required, block):
            - create (optional)
            - delete (optional)
            - list (optional)
            - read (optional)
            - write (optional)
        - resource_name (required)
        - service (required)
    - ssh_authorized_key (block):
        - description (optional)
        - key (required)
EOT

  type = map(object({
    name                 = string
    storage_account_id   = string
    home_directory       = optional(string)
    ssh_key_enabled      = optional(bool) # Default: false
    ssh_password_enabled = optional(bool) # Default: false
    permission_scope = optional(object({
      permissions = object({
        create = optional(bool) # Default: false
        delete = optional(bool) # Default: false
        list   = optional(bool) # Default: false
        read   = optional(bool) # Default: false
        write  = optional(bool) # Default: false
      })
      resource_name = string
      service       = string
    }))
    ssh_authorized_key = optional(object({
      description = optional(string)
      key         = string
    }))
  }))
}

