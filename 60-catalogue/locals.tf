locals {
  common_tags ={
    Project = var.project_name
    Environment = var.environment
  }
  common_name = "${var.project_name}-${var.environment}"
  
  ami_id = data.aws_ami.joindevops.id 
  catalogue_sg_ids = data.aws_ssm_parameter.catalogue_sg_id.value
  private_ids = split(",", data.aws_ssm_parameter.private_subnets_ids.value)[0]
}