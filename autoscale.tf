resource "aws_autoscaling_attachment" "svc_asg_external2" {
  alb_target_group_arn   = "${aws_alb_target_group.alb_target_group.arn}"
  autoscaling_group_name = "${aws_autoscaling_group.svc_asg.id}"
}
#Instance Attachment
resource "aws_alb_target_group_attachment" "svc_physical_external" {
  target_group_arn = "${aws_alb_target_group.alb_target_group.arn}"
  target_id        = "${aws_instance.svc.id}"  
  port             = 8080
}
