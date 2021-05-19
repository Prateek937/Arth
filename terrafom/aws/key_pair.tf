provider "aws"{
	region = "ap-south-1"
	profile = "default"
}

resource "aws_key_pair" "Shilpy" {
  	key_name   = "shilpy"
	public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGOoPmXr4oggNrcYR23kOczdynPIwrKoplzlrQ3FRRzUiEN8e9dsubUqENgwkPoC0zpjFONMtZ6VopGrRFAIuGxU9pKmwA7pSRQicjym6EQhOCG94Sbwc6NHM50OfnjgbVHnybBVv3DwsNp27PhCHkAKTmYOz7h0O8SFtR7geusF9WmCh3ggbu3/IipIAqIDhgdergE/BKQZxRj/F35RvQRGNNv6j/JGza+l5ZpMd3LTGDlfx7sbDeNNTQgWo/3US8eOfPXGCSN5/8Ga3Qiix2E3UX+iTbCEvyV6Fn77xoXJTcD+6VArX7Cw495hOVmBx0d0OeVFKYu+OWiOGWbY+CglYBSlxkOSpytSYY+D0ewac93Z4VbVv9wNs3x5hrMOR5N0CskTKjLcah92EXqWdnglQUzWAoeQqrZk4ne8FEoccKhCZfm7diAV6l36mqUQW6q5NRMSmYSCTDeBfNERp/5ar42C2kJhOIrolE4Sg1IWdv28koHTum6HcmRiG+r/s="
}

resource "aws_instance" "web" {
  ami           = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  key_name = "shilpy"
  tags = {
    Name = "Moti"
  }
}
