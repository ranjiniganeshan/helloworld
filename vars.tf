variable "AWS_REGION" {}
variable "alb_name" {}
variable "alb_subnets" {
type = "list"
}
variable "alb_security_groups"{
type = "list"
}

variable "internal_alb" {}
variable "idle_timeout"{ }
variable "s3_bucket" {}
variable "svc_port" {}
variable "aws_vpc" {}
variable "target_group_sticky" {}
variable "target_group_name_one" {}
variable "target_group_path" {}
variable "target_group_port" {}
variable "target_group_name_two"{}
variable "AMI" {}
variable "PATH_TO_PUBLIC_KEY" {}
