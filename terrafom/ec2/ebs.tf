provider "aws" {
	region="ap-south-1"
	# not using the key directly here, use the profile 
	profile = "PROFILE NAME FROM AWS COMMAND LINE"
}

# os1 is a variable name where all the information is stored 
# related to the instance
resource "aws_instance" "os1" {
	ami = "ami-01aff33ed..."
	instance_type = "t2.micro"
	tags = {
		Name = "My first Terraform"
	}
}

output "os1" {
	value = aws_instance.os1
}


# launching the ebs volume of 10GB
resource "aws_ebs_volume" "st1" {
	availability_zone = aws_instance.os1.availability_zone
	size = 10

	tags = {
		Name = "LinuxWorld HD New"
	}
}

output "os2" {
	value = aws_ebs_volume.st1
}

resource "aws_volume_attachment" "ebs_att" {
	device_name = "dev/sdh"
	volume _id = aws_ebs_volume.st1.id
	instance_id = aws_instance.os1.id
}

output "final output" {
	value = aws_volume_attachment.ebs_att
}
