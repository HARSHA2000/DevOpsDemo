terraform {
  backend "azurerm" {
    resource_group_name  = "terraformdemo"
    storage_account_name = "terraformstatecodeops"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}

module "RG" {
  source   = "./modules/RG"
  rgname   = var.rgname
  location = var.location
}
