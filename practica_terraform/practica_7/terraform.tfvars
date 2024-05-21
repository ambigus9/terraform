virginia_cidr = "10.10.0.0/16"
#public_subnet = "10.10.0.0/24"
#private_subnet = "10.10.1.0/24"

subnets = ["10.10.0.0/24", "10.10.1.0/24"]

tags = {
  "env"         = "develop"
  "owner"       = "Miguel"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.8.3"
}

sg_ingress_cidr = "186.103.60.89/32"

ec2_specs = {
  "ami" = "ami-0c101f26f147fa7fd"
  "instance_type" = "t2.micro"
}