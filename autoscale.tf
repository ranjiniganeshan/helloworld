resource "aws_launch_configuration" "dev-launchconfig" {
  name_prefix          = "dev-launchconfig"
  image_id             = "${var.AMI}"
  instance_type        = "t2.micro"
  key_name             = "${aws_key_pair.mykeypair.key_name}"
  security_groups      = "${var.alb_security_groups}"
}

resource "aws_autoscaling_group" "dev-autoscaling" {
  name                 = "dev-autoscaling"
  vpc_zone_identifier  = "${var.alb_subnets}"
  launch_configuration = "${aws_launch_configuration.dev-launchconfig.name}"
  target_group_arns = ["${aws_alb_target_group.alb_target_group_two.arn}"]
  min_size             = 1
  max_size             = 2
  health_check_grace_period = 300
  health_check_type = "EC2"
  force_delete = true

  tag {
      key = "Name"
      value = "ec2 instance"
      propagate_at_launch = true
  }
}
