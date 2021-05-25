resource "aws_instance" "web" {
    ami = "ami-0585b5789d3564fdb"
    instance_type = var.instance_class
    # launch if for production 
    count = var.istest ? 0 : 1
}