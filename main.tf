# Reference existing resource group - PluralSight sandbox pre-creates this
data "azurerm_resource_group" "main" {
  name = "1-0acf844d-playground-sandbox"
}
