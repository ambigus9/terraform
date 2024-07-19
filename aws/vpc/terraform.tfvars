oregon_cidr = "10.10.0.0/16"
ingress_ports_list = [22, 80, 443]
subnets = ["10.10.0.0/24", "10.10.1.0/24"]

tags = {
  "env"         = "develop"
  "owner"       = "Miguel"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.8.3"
  "project"     = "demo"
  "region"      = "oregon"
}

security_group_ingress_cidr = "181.55.23.106/32"

ec2_specs = {
  "ami" = "ami-0c101f26f147fa7fd"
  "instance_type" = "t2.micro"
}


