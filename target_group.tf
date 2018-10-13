resource "aws_alb_target_group" "alb_target_group_one" {  
  name     = "${var.target_group_name_one}"  
  port     = "${var.svc_port}"  
  protocol = "HTTP"  
  vpc_id   = "${var.aws_vpc}"   
  tags {    
    name = "${var.target_group_name_one}"    
  }   
  stickiness {    
    type            = "lb_cookie"    
    cookie_duration = 1800    
    enabled         = "${var.target_group_sticky}"  
  }   
  health_check {    
    healthy_threshold   = 3    
    unhealthy_threshold = 10    
    timeout             = 5    
    interval            = 10    
    path                = "${var.target_group_path}"    
    port                = "${var.target_group_port}"  
  }
}


resource "aws_alb_target_group" "alb_target_group_two" {  
  name     = "${var.target_group_name_two}"  
  port     = "${var.svc_port}"  
  protocol = "HTTP"  
  vpc_id   = "${var.aws_vpc}"   
  tags {    
    name = "${var.target_group_name_two}"    
  }   
  stickiness {    
    type            = "lb_cookie"    
    cookie_duration = 1800    
    enabled         = "${var.target_group_sticky}"  
  }   
  health_check {    
    healthy_threshold   = 3    
    unhealthy_threshold = 10    
    timeout             = 5    
    interval            = 10    
    path                = "${var.target_group_path}"    
    port                = "${var.target_group_port}"  
  }
}
