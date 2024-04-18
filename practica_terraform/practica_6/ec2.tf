
resource "aws_instance" "public_instance" {
  ami                     = "ami-0c101f26f147fa7fd" # us-east-1
  instance_type           = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  key_name = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]

  tags = {
    "Name": "instancia_terraform"
  }
}