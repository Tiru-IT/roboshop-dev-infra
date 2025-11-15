module "components" {
  for_each = var.components
  source = "../../terraform-roboshop-component"
  component = each.key
  rool_priority = each.value.rool_priority
}