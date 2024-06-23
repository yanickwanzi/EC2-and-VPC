variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "my_ami" {
  type    = string
  default = "ami-0cf2b4e024cdb6960"
}

variable "my_instance_type" {
  type    = string
  default = "t2.medium"
}

variable "my_key" {
  type    = string
  default = "Automationkey"
}

variable "region" {
  description = "AWS region for the VPC"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "root_volume_type" {
  description = "The type of root volume to use"
  type        = string
  default     = "gp2"
}

variable "root_volume_size" {
  description = "The size of the root volume in GB"
  type        = number
  default     = 20
}

variable "additional_ebs_device_name" {
  description = "The device name for the additional EBS volume"
  type        = string
  default     = "/dev/sdh"
}

variable "additional_ebs_volume_size" {
  description = "The size of the additional EBS volume in GB"
  type        = number
  default     = 100
}
