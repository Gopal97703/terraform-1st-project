resource "aws_lb_target_group" "TG" {
  name     = "my-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id

  health_check {
    path     = "/"
    protocol = "HTTP"
    port     = "traffic-port"
  }
}


resource "aws_lb_target_group_attachment" "attach1" {
  target_group_arn = aws_lb_target_group.TG.arn
  target_id        = aws_instance.ec2-1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "attach2" {
  target_group_arn = aws_lb_target_group.TG.arn
  target_id        = aws_instance.ec2-2.id
  port             = 80
}