module "resource" {
  source               = "../../modules/azurerm_resource_group"
  resource_group_name  = var.resource_group_name
  location             = var.location
  resource_group_name1 = var.resource_group_name1
  location1            = var.location1
  resource_group_name2 = var.resource_group_name2
  location2            = var.location2
}
