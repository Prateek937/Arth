variable "x" {
    # default datatype is string.
}

variable "y" {
    type = bool
    
}

output "o1" {
    value = var.x
}

output "os2" {
    value = var.y
}

output "condition" {
    # if y is true print vimal else jack
    value = var.y ? "vimal" : "jack"
}