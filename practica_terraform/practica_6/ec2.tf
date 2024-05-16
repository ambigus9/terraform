
resource "aws_instance" "public_instance" {
  ami                    = var.ec2_specs.ami # us-east-1
  instance_type          = var.ec2_specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")

  lifecycle {
    create_before_destroy = true  # crea el recurso nuevo primero y luego destruye el actual ante cualquier cambio
    prevent_destroy       = false # evita que se destruya el recurso
  }

  provisioner "local-exec" {
    command = "echo instancia creada con IP: ${self.public_ip} >> datos_instancia.txt"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo instancia destruida con IP: ${self.public_ip} >> datos_instancia.txt"
  }

  tags = {
    Name = "Terraform v13"
  }

  # provisioner "remote-exec" {

  #   inline = [ 
  #     "echo 'hola mundo' > ~/saludo.txt"
  #    ]

  #   connection {
  #     type = "ssh"
  #     host = self.public_ip
  #     user = "ec2-user"
  #     private_key = file("/home/miguel/claves/miguel_aws_cloud_terraform.pem")
  #   }

  # }

}
