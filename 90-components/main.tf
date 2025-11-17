# module "components" {
#   for_each = var.components
#   source = "../../terraform-roboshop-component"
#   component = each.key
#   rool_priority = each.value.rool_priority
# }

module "components" {
    for_each = var.components
    source = "git::https://github.com/Tiru-IT/terraform-roboshop-component.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}