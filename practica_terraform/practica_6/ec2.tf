
resource "aws_instance" "public_instance" {
  ami                     = "ami-0c101f26f147fa7fd" # us-east-1
  instance_type           = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  tags = {
    "Name": "Instancia Gratis"
  }
}