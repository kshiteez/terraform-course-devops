# This is ec2


resource "aws_instance" "terraform-ec2" {
  ami                         = var.myami
  instance_type               = var.ec2type
  vpc_security_group_ids      = var.mysg
  key_name                    = var.mykey
  subnet_id                   = var.mysubnet
  associate_public_ip_address = true
  tags = {
    Name = "terraform-ec2"
  }
}

# resource "aws_instance" "test-ec2" {
#   ami                         = var.myami
#   instance_type               = var.ec2type
#   vpc_security_group_ids      = var.mysg
#   key_name                    = var.mykey
#   subnet_id                   = var.mysubnet
#   associate_public_ip_address = true
#   tags = {
#     Name = "test-ec2"
#   }
# }