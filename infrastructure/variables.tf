variable "project_name" {
  type    = string
  default = "myapp"
}
variable "environment" { 
    type = string 
    }
variable "location" {
  type    = string
  default = "canadacentral"
}
variable "vnet_cidr" { type = string }
variable "subnet_cidr" { type = string }
variable "vm_size" { type = string }
variable "node_count" { type = number }
variable "app_image_tag" {
  type    = string
  default = "latest"
}
