variable "instance_class" {
    # default datatype is string.
}

variable "y" {
    type = bool
    
}

variable "istest" {
    type = bool
}

variable "azaws" {
    default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
    
}

output "o1" {
    value = var.instance_class
}

output "os2" {
    value = var.y
}

output "condition" {
    # if y is true print vimal else jack
    value = var.y ? "vimal" : "jack"
}
