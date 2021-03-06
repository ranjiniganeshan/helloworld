resource "aws_alb" "alb" {
  name            = "${var.alb_name}"
  subnets         = "${var.alb_subnets}"
  security_groups = "${var.alb_security_groups}"
  internal        = "${var.internal_alb}"
  idle_timeout    = "${var.idle_timeout}"

  tags {
    Name = "${var.alb_name}"
  }

  access_logs {
    bucket = "${var.s3_bucket}"
    prefix = "ELB-logs"
  }
}
