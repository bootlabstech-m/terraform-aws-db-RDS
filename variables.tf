variable "allocated_storage" {
  description = "allocated_storage"
  type        = number
}

variable "db_name" {
  description = "db_name"
  type        = string
}

variable "db_engine" {
  description = "db_engine"
  type        = string
}

variable "db_engine_version" {
  description = "db_engine_version"
  type        = string

}
variable "db_instance_class" {
  description = "db_instance_class"
  type         = string

}
variable "db_username" {
  description = "db_username"
  type        = string
 
}
variable "db_password" {
  description = "db_password"
  type        = string

}
variable "parameter_group_name" {
  description = "parameter_group_name"
  type        = string
  
}
variable "skip_final_snapshot" {
  description = "skip_final_snapshot"
  type        = string

}
variable "role_arn" {
  description = "Role ARN"
  type        = string
}
variable "region"{
  description="Region"
  type = string
}
variable "subnet_ids"{
  description="subnet_ids"
  type = list(string)
}
variable "vpc_security_group_ids"{
  description="vpc_security_group_ids"
  type = list(string)
}
variable "snapshot_identifier" {
  description = "snapshot_identifier"
  type        = string
}
variable "db_subnet_group_name" {
  description = "db_subnet_group_name"
  type        = string
}
variable "name" {
  description = "db_identifier"
  type        = string
}
