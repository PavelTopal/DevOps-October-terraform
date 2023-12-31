variable region {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}


module/vpc {
  source = "./modules/vpc"
  cidr_block            = "10.0.0.0/16"
  subnet1_cidr_block    = "10.0.0.0/24"
  subnet1_az            = "${var.region}a"
  subnet2_cidr_block    = "10.0.1.0/24"
  subnet2_az            = "${var.region}b"
  subnet3_cidr_block    = "10.0.2.0/24"
  subnet3_az            = "${var.region}c"

}
