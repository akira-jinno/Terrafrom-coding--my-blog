resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = false

  # ★ ここでスポットインスタンスとして起動するオプションを指定
  instance_market_options {
    market_type = "spot"
    spot_options {
      max_price = var.spot_price
    }
  }

  tags = {
    Name = "tf-ec2-blog-spot"
  }
}

resource "aws_eip" "this" {
  instance = aws_instance.this.id

  tags = {
    Name = "tf-ec2-elastic-ip"
  }
}
