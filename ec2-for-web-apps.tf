############################################
# Terraform module to filter AMI based on
# architecture, startsWith, and endsWith
############################################
 #*  Path: modules/ami-filter/main.tf
 #*  This module is used to filter AMI based on architecture, startsWith, and endsWith
 #*  The module takes the following input:
 #*  - startsWith: The prefix of the AMI name
 #*  - endsWith: The suffix of the AMI name
 #*  - architecture: The architecture of the AMI

module "ami_filter" {
  source = "./modules/ami-filter"
  startsWith = "al2023-ami"
  endsWith = "x86_64"
  architecture = "x86_64"
}

module "aws_key_pair" {
  source = "./modules/key-pair"
  key_pair_name = "myEc2Key"
  key_algorithm = "RSA"
  key_rsa_bits  = 4096
  key_name_output_file = "myEc2Key.pem"  
}

/*****************************************************
 * Data source to get the hosted zone ID
 ****************************************************/
data "aws_route53_zone" "learndevtech" {
  name         = "learndevtech.com"
  private_zone = false
}

/*****************************************************
 * Create a record for the API Gateway
 ****************************************************/
resource "aws_route53_record" "cloudwatch_domain_record_development" {
  allow_overwrite = true
  zone_id = data.aws_route53_zone.learndevtech.zone_id
  name    = "development.web-app.learndevtech.com"
  type    = "A"
  ttl     = "300"
  records = [module.cloudwatch_ec2_development.public_ip]
}


############################################
# Terraform module to create EC2 instances #
############################################

module "cloudwatch_ec2_development" {
  source        = "./modules/ec2"
  instance_type = "t2.micro"
  key_name      = module.aws_key_pair.key_pair_name
  domain_name   = "learndevtech.com"
  ami_id        = module.ami_filter.ami_id
}