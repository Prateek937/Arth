provider "aws" {
	region = "ap-south-1"
	profile = "default"
}

#resource for key

# resource for security group

resource "aws_instance" "webOS" {
	ami = "ami-010aff33ed5991201"
	instance_type = "t2.micro"
	security_groups = [""]
	key_name = "hadoop"
	tags = {
		Name = "Webserver bu Terrafom"
	}

	#  Connection and provisioner will only run here when instance is not already launched. if already launched then we have to right as null resource.

	connection{
		type = "ssh"
		user = "ec2-user"
		private_key = file("/home/pratee/Downloads/hadoop.pem")
		host = aws_instance.webos1.public_ip
	}
	
	#execute commands inside the instance

	provisioner "remote-exec" {
		inline = [
			"sudo yum install httpd -y",
			"sudo yum install php -y",
			"sudo systemctl start httpd"
		]
	}

}


# for running the connection and provisioner when instance is already launched. This is called null_resource. 
resource "null_resource" "web" {
	connection{
                type = "ssh"
                user = "ec2-user"
                private_key = file("/home/pratee/Downloads/hadoop.pem")
                host = aws_instance.webos1.public_ip
        }

        #execute commands inside the instance

        provisioner "remote-exec" {
                inline = [
                        "sudo yum install httpd -y",
                        "sudo yum install php -y",
                        "sudo systemctl start httpd"
                ]
        }


}


