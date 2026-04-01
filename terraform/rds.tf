resource "aws_db_instance" "database" {
  allocated_storage = 20
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  username          = "admin"
  password          = "password"
  multi_az          = true
}
vpc_security_group_ids = [aws_security_group.rds_sg.id]