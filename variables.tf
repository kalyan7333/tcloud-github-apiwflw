/*
local {
    environment-name = var.tag_name
}
*/
/*variable "tag_name" {
  description = " Default tag"
  type        = string
  default     = "terraform-webapp-demo"
}
*/
variable "inst_type" {
  description = "Multiple instance types"
  type        = string
  default     = "t3.micro"
}
variable "inst_count" {
  description = "No of EC2 instances to be launched"
  type        = number
  default     = 1
}
variable "ec2_instance_tags" {
  description = "Default tags to be used"
  type        = map(string)
  default = {
    "Name"        = "webapp"
    "Environment" = "Dev"
    "Type"        = "Application"
  }
}
variable "aws_region" {
  description = "Region on which resources will be created"
  type        = string
  default     = "us-east-1"
}
variable "az_name" {
  description = "Availability Zone name should be region defined in aws_region variable"
  type        = string
  default     = "us-east-1b"
}


variable "ami_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default     = "ami-020cba7c55df1f615"
}

locals {

  common_tags = {
    service_tag = "${var.aws_region}-${var.inst_count}"
    Name        = "Nginx-${terraform.workspace}"
  }
}

