virginia_cidr = "10.10.0.0/16"
#public_subnet = "10.10.0.0/24"
#private_subnet = "10.10.1.0/24"

subnets = ["10.10.0.0/24", "10.10.1.0/24"]

tags = {
  "owner"       = "Stiven"
  "env"         = "desarrollo"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.3.6"
  "project"     = "devsecops"
  "region"      = "SPLatam"
}

sg_ingress_cidr = "0.0.0.0/0"

ec2_specs = {
  "ami"           = "ami-079db87dc4c10ac91"
  "instance_type" = "t2.micro"
}

enable_monitoring = false

ingress_ports_list = [22, 80, 443]
