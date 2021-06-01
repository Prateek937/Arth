provider "aws"{
	region = "ap-south-1"
	profile = "default"
}

resource "aws_instance" "trialOs" {
	ami = "ami-010aff33ed5991201"
	instance_type = var.type
	tags = {
		Name = "Terrafom trial"
	}
}

