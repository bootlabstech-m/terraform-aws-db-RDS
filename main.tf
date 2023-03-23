resource "aws_db_instance" "db" {
  identifier           = var.db_name
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids = var.vpc_security_group_ids
  snapshot_identifier    = var.snapshot_identifier
  publicly_accessible    = false

}
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db_subnet_group01"
  subnet_ids = var.subnet_ids
}
