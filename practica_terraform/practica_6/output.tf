
output "ec2_public_ip" {
    description = "IP Pública de la Instancia EC2"
    value = aws_instance.public_instance.public_ip
}