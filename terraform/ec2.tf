resource "aws_instance" "web1" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.private1.id
}
resource "aws_instance" "web2" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.private2.id
}
vpc_security_group_ids = [aws_security_group.ec2_sg.id]
