#resource block
resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.my_instance_type
  key_name      = var.my_key
  count         = 3
  root_block_device {
    volume_type = var.root_volume_type
    volume_size = var.root_volume_size
  }

  ebs_block_device {
    device_name = var.additional_ebs_device_name
    volume_size = var.additional_ebs_volume_size
  }
  tags = {
    "Name" = "Ec2-servers"
  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "my-vpc"
  }
}
