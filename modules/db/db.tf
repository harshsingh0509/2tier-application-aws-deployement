resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.37"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "password"
  db_subnet_group_name = aws_db_subnet_group.main.name

  tags = {
    Name = "Database"
  }

  skip_final_snapshot       = false
  final_snapshot_identifier = "final-snapshot-${var.db_instance_identifier}"
}

resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = [var.subnet_id, var.secondary_subnet_id]

  tags = {
    Name = "main"
  }
}
