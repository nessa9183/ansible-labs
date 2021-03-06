## VARIABLES FOR WINDOWS MODULE

## LOCALS
locals {
  lab03_tags = {
    Name         = "Terraform-Class"
    Project      = "Learning"
    ContactEmail = "n01390171@humber.ca"
    Environment  = "Lab"
  }
}

variable "resource_group" {
  description = "This is the resource group where all the resources will be deployed"
}

variable "location" {
  description = "This is the location where all the infrastructure will be deployed"
}

## VARIABLE FOR WINDOWS AVAILABILITY SET
variable "windows_avs" {
  # default = "windows_avs"
}


## VARIABLES FOR VIRTUAL MACHINE RESOURCES 
variable "windows_name" {
  type = map(string)
  # default = {
  #   lab-web-w-vm1 = "Standard_B1s"
  #   lab-web-w-vm2 = "Standard_B1ms"
  # }
  description = "This variable defines all the properties of the virtual machine"
}

variable "os_info" {
  type = map(string)

  default = {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  description = "This variable defines the attributes of the OS which we will use in our VM"
}

variable "os_disk" {
  type = map(string)

  default = {
    account_type = "StandardSSD_LRS"
    disk_size    = "127"
    caching      = "ReadWrite"
  }

  description = "This variable defines all the attribute of the OS disk"
}

variable "admin_user" {
  type = map(string)

  default = {
    username = "n01390171"
    password = "P@$$word1234!"
  }

  sensitive = true
}

variable "subnet2_id" {

}

variable "subnet_2_association" {

}