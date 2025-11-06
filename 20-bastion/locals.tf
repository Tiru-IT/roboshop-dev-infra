locals {
  common_tags ={
    Project = var.project_name
    Environment = var.environment
  }
  common_name = "${var.project_name}-${var.environment}"
  ami_id = data.aws_ami.joindevops.id 
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
  pub_ids = split(",", data.aws_ssm_parameter.public_subnets_ids.value)[0]
}