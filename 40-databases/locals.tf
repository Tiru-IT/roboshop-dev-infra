locals {
  ami_id = data.aws_ami.joindevops.id
  mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
  database_subnets_ids = split(",", data.aws_ssm_parameter.database_subnets_ids.value)[0]

  redis_sg_id = data.aws_ssm_parameter.redis_sg_id.value
  rabbitmq_sg_id = data.aws_ssm_parameter.rabbitmq_sg_id.value
  mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value
  
  common_name = "${var.project_name}-${var.environment}"
  common_tags ={
    Project = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}