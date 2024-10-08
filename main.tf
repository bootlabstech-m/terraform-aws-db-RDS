resource "aws_db_instance" "db" {
  identifier             = var.db_identifier
  allocated_storage      = var.allocated_storage
  storage_type           = var.storage_type
  db_name                = var.db_name
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = var.skip_final_snapshot
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids = var.vpc_security_group_ids
  snapshot_identifier    = var.snapshot_identifier
  publicly_accessible    = false
  multi_az = var.multi_az
  license_model          = var.license_model
  storage_encrypted           = var.storage_encrypted
  lifecycle {
    ignore_changes = [tags]
  }
}
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids
  lifecycle {
    ignore_changes = [tags]
  }
}