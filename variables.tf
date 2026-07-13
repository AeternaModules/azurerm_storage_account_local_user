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
    ssh_key_enabled      = optional(bool)
    ssh_password_enabled = optional(bool)
    permission_scope = optional(list(object({
      permissions = object({
        create = optional(bool)
        delete = optional(bool)
        list   = optional(bool)
        read   = optional(bool)
        write  = optional(bool)
      })
      resource_name = string
      service       = string
    })))
    ssh_authorized_key = optional(list(object({
      description = optional(string)
      key         = string
    })))
  }))
}

