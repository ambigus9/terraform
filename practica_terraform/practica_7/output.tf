
output "ec2_public_ip" {
    description = "IP Pública de la Instancia EC2"
    value = [for instance in aws_instance.public_instance: instance.public_ip]
}