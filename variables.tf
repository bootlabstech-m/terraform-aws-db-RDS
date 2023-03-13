variable "allocated_storage" {
  description = "allocated_storage"
  type        = number
  default     = 10
}

variable "db_name" {
  description = "db_name"
  type        = string
  default     = "mydb"
}

variable "db_engine" {
  description = "db_engine"
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "db_engine_version"
  type        = string
  default     = "5.7"
}
variable "db_instance_class" {
  description = "db_instance_class"
  type         = string
  default     = "db.t3.micro"
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
  default     = "default.mysql5.7"
}
variable "skip_final_snapshot" {
  description = "skip_final_snapshot"
  type        = string
  default     = true
}
variable "role_arn" {
  description = "Role ARN"
  type        = string
}
variable "region"{
  description="Region"
  type = string
  default = "ap-south-1"
}
variable "subnet_ids"{
  description="subnet_ids"
  type = list(string)
}