module "sg" {
  count = length(var.sg_name)
  source = "git::https://github.com/Tiru-IT/terraform-aws-sg.git?ref=main"
  sg_name = var.sg_name[count.index]
  sg_description = "create for ${var.sg_name[count.index]}"
  project_name = var.project_name
  environment = var.environment
  vpc_id = local.vpc_id
}