resource "aws_instance" "web1" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public1.id
}
resource "aws_instance" "web2" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public2.id
}
