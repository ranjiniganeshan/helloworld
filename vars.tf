variable "AWS_REGION" {
  default = "us-east-1a"
}

variable "alb_name" {
  default = "devfarm"
}

variable "alb_subnets" {
  default = ["subnet-011cac0c5005027b0", "subnet-0ea0539fb00cd6ccb"]
}

variable "internal_alb" {
  default = "false"
}

variable "s3_bucket" {
  default = "devfarmbucket"
}

variable "idle_timeout" {
  default = "60"
}

variable "alb_security_groups" {
  default = ["sg-0ef0df721684a2d48", "sg-0baab316558d18aaf"]
}

variable "target_group_name" {
  default = "devfarmtarget"
}

variable "svc_port" {
  default = "443"
}

variable "vpc_id" {
  default = "vpc-0bedfc6a799106996"
}

variable "target_group_sticky" {
  default = "true"
}

variable "target_group_path" {
  default = "/img"
}

variable "target_group_port" {
  default = "443"
}
