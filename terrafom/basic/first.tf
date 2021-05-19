provider "aws"{
	region="ap-south-1"
	access_key="AKIATZF2PVQFVZ3RT2OZ"
	secret_key="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"
}

resource "aws_instance" "os1"{
	ami="ami-096fda3c22c1c990a"
	instance_type="t2.micro"
	tags={ 
		Name="My first Terraform"
	}
}
