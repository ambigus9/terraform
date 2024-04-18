virginia_cidr = "10.10.0.0/16"
#public_subnet = "10.10.0.0/24"
#private_subnet = "10.10.1.0/24"

subnets = [ "10.10.0.0/24", "10.10.1.0/24" ]

tags = {
    "env": "develop"
    "ownder": "Miguel Alberto Plazas Wadynski"
    "cloud": "AWS"
    "IAC": "Terraform"
    "IAC_Version": "1.7.4"
}

sg_ingress_cidr = "186.103.1.209/24"