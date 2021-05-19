variable "x" {
    default = "t2.micro"
    type = string

}

output "o1" {
    value = var.x
}