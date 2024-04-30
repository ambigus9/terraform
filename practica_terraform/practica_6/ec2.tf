
resource "aws_instance" "public_instance" {
  ami                    = "ami-0c101f26f147fa7fd" # us-east-1
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = <<EOF
    #!/bin/bash
    echo "Este es un mensaje" > ~/mensaje.txt
  EOF


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