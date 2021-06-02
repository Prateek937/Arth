provider "aws"{
	region = "ap-south-1"
    profile = "default"
}

variable "region" {
    default = "ap-south-1"
}

# Dictionary / map type variable
variable "ami" {
    type = map
    default = {
        "us-east-1" = "ami-122333"
        "us-west-1" = "ami-122444"
        "ap-south-1" = "ami-122555"
    }
}   

resource "aws_instance" "trialOs" {
	# Use lookup function instead of static.
    # lookup function returns the queried value
    # return default if not found.
    # lookup(map, key, default)
    ami = lookup(var.ami, var.region, "ami-default")
	instance_type = "t2.micro"
	tags = {
		Name = "Terrafom trial"
	}
}


output "o1" {
    # lookup(map, key, default)
    value = lookup(var.ami, var.region, "ami-default")
}