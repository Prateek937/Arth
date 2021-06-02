resource "aws_security_group" "s1" {
  name        = "allow_tls"

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "s2" {
  name        = "allow_tls"

  ingress {
    from_port        = 81
    to_port          = 81
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "s3" {
  name        = "allow_tls"

  ingress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

# Either I can write the resources multiple time.
# Or Create variable and use Dynamic Blocks

variable "sgports" {
    type = list
    default = [80, 81, 8080, 8081]
}

resource "aws_security_group" "s4" {
  name = "mysg"
  # 'dynamic' is keyword for dynamic block
  dynamic "ingress" {
      # run the dynamic block for each element in sgports variable
      for_each = var.sgports
      # put everything inside content
        content {
            # ingress.value will be the value fetched from variable
            from_port        = ingress.value
            to_port          = ingress.value
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }
  }
}