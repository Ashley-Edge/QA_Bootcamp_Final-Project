# Create a rds MySQL 5.7 instance

resource "aws_db_instance" "rds_instance" {
  name = "database"

  engine         = "mysql"
  engine_version = "5.7"

  publicly_accessible = true

  username = "root"
  password = var.db_root_password #needs to be set still
}