module "sg" {
  count = length(var.sg_name)
  source = "git::https://github.com/Tiru-IT/terraform-aws-sg.git?ref=main"
  sg_name = var.sg_name[count.index]
  sg_description = "create for ${var.sg_name[count.index]}"
  project_name = var.project_name
  environment = var.environment
  vpc_id = local.vpc_id
}

# resource "aws_security_group_rule" "frontend_to_frontend_lb" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   security_group_id = module.sg[9].sg_id
#   source_security_group_id = module.sg[11].sg_id
# }