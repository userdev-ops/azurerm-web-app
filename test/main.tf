resource "random_id" "test" {
  byte_length = 4
}

resource "azurerm_resource_group" "test" {
  name     = format("test-%s", random_id.test.hex)
  location = "westeurope"
}

module "web_app" {
  source = "../"

  name = format("test-%s", random_id.test.hex)

  resource_group_name = azurerm_resource_group.test.name

  runtime = {
    name    = "dotnetcore"
    version = "2.2"
  }

  plan = {
    sku_size = "S1"
  }

  ip_restrictions = [
    "192.168.2.56/32",
    "192.168.2.57/32",
  ]
}

data "azurerm_app_service" "test" {
  name                = module.web_app.name
  resource_group_name = azurerm_resource_group.test.name
}

output "app_service" {
  value = data.azurerm_app_service.test
}
