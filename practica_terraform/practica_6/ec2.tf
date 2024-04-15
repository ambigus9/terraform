
resource "aws_instance" "public_instance" {
  ami                     = "ami-0c101f26f147fa7fd" # us-east-1
  instance_type           = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  key_name = data.aws_key_pair.key.key_name
  
  lifecycle {
    create_before_destroy = true # crea el recurso nuevo primero y luego destruye el actual ante cualquier cambio
    prevent_destroy = true # evita que se destruya el recurso
  }

}