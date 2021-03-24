# Create a rds MySQL 5.7 instance

resource "aws_db_instance" "rds_instance" {
  name = "database"

  engine         = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"

  publicly_accessible = true

  username = "root"
  password = var.db_root_password #needs to be set still

# for auto scalling
  allocated_storage = 10
  max_allocated_storage = 50

 # If needed, we can delete our RDS instance with Terraform.
  skip_final_snapshot = true 
}