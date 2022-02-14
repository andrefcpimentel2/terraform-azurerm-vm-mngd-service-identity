variable "prefix" {
  default = "andre-vm-test"
}

variable "location" {
  default = "West Europe"
}

variable "vm_count" {
  default = 2
}

variable "vm_size" {
  default = "Standard_DS1_v2"
}

variable "environment" {
  default = "staging"
}

variable "admin_username" {
  default = "hashicorp"
}

variable "storage_image_reference" {
    type = map(any)
    default = {
            publisher = "Canonical"
            offer     = "UbuntuServer"
            sku       = "18.04-LTS"
            version   = "latest"
        }
}

variable "os_disk" {
    type = map(any)
    default = {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
        }
}

variable "os_profile" {
    type = map(any)
    default = {
        computer_name  = "hostname"
        admin_username = "hashi_admin"
        admin_password = "Hashicorp12345!"
      
    }
    
}

locals {
  # Common tags to be assigned to all resources
  common_tags = {
    environment = var.environment
  }
}