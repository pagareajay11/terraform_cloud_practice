variable "image_id" {
    type = string
  
}
variable "instance_type" {
    type = string
  
}
variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type

 # vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "first-tf-instance"
  }
}