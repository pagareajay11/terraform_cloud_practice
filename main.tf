variable "image_id" {
    type = string
  
}
variable "instance_type" {
    type = string
  
}
resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type

 # vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "first-tf-instance"
  }
}