
variable "instancias" {
  description = "Nombre de las Instancias EC2"
  type        = set(string)
  default     = ["mysql", "jumpserver"]
}


resource "aws_instance" "public_instance" {
  #count                  = length(var.instancias)
  for_each = var.instancias
  ami                    = var.ec2_specs.ami # us-east-1
  instance_type          = var.ec2_specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")

  tags = {
    "Name" = each.value
  }
}
