# resource "aws_instance" "this" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   subnet_id              = var.subnet_id
#   associate_public_ip_address = true

#   tags = {
#     Name = "tf-ec2-blog"
#   }
# }

resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = false

  tags = {
    Name = "tf-ec2-blog"
  }
}

resource "aws_eip" "this" {
  instance = aws_instance.this.id

  tags = {
    Name = "tf-ec2-elastic-ip"
  }
}
