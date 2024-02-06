variable "instancias" {
  description = "Nombre de las instancias"
  type        = list(string)
  default     = ["apache"]
}
resource "aws_instance" "public_instance" {
  for_each               = toset(var.instancias)
  ami                    = var.ec2_specs.ami
  instance_type          = var.ec2_specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instace.id]
  user_data              = file("scripts/user_data.sh")

  tags = {
    "Name" = "${each.value}_${local.sufix}"
  }
}

resource "aws_instance" "monitoring_instance" {
  count                  = var.enable_monitoring ? 1 : 0
  ami                    = var.ec2_specs.ami
  instance_type          = var.ec2_specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instace.id]
  user_data              = file("scripts/user_data.sh")

  tags = {
    "Name" = "monitoreo_${local.sufix}"
  }
}
