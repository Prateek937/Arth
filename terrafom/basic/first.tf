provider "aws" {
	region="ap-south-1"
	access_key=""
	secret_key=""

}

resource "aws_instance" "os1" {
	ami = "ami-01aff33ed..."
	instance_type = "t2.micro"
	tags = {
		Name = "My first Terraform"
	}
}
