locals {
  common_name = "${var.project}-${var.environment}"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
  private_subnets_ids = split(",", data.aws_ssm_parameter.private_subnets_ids.value)

  common_tags = {
    Project = var.project
    Environment = var.environment
    Terrafrom = "true"
  }

}