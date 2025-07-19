module "resource" {
    source              = "../../modules/azurerm_resource_group"
    resource_group_name = var.resource_group_name
    location            = var.location
}