resource "aws_launch_template" "windows_instance" {
  name_prefix   = "web-template"
  image_id      = "ami-1234567890abcdef0"
  instance_type = "t2.micro"

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "web-server"
    }
  }
}
resource "aws_autoscaling_group" "web_asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 2

  vpc_zone_identifier = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]

  launch_template {
    id      = aws_launch_template.windows_instance.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "web-asg-instance"
    propagate_at_launch = true
  }
}
