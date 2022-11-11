provider "aws" {
 region = "us-east-2"
}

variable "image" {
  type = string
  default = "ami-0603cbe34fd08cb81"
  description = "Enter your APP Image to be deployed"
}

variable "hw" {
  type = string
  default = "t2.nano"
  description = "Enter your hardware model"
}

variable "name" {
  type = string
  default = "kumar-server1"
  description = "Enter your server name"
}

resource "aws_instance" "myawsserver" {
  ami = v
ar.image
  instance_type = var.hw

  tags = {
    Name = var.name
    Env = "test"
    Owner = "Kumar"
  }
}

output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}
