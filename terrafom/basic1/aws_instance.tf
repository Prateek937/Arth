provider "aws"{
	region = "ap-south-1"
	access_key = "AKIATZF2PVQFVZ3RT2OZ" 
	secret_key = "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"
}

resource "aws_instance" "trialOs" {
	ami = "ami-010aff33ed5991201"
	instance_type = "t2.micro"
	tags = {
		Name = "Terrafom trial"
	}
}

