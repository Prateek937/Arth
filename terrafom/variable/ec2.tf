variable "x" {
	type = string
	default = "linux World"
}

output "myvalue" {
	value = "${var.x}"
}
