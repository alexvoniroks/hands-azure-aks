resource "azurerm_resource_group" "aks_rg" {
  name     = "rg-aks-lab"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-lab-cluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "aks-lab"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = var.node_size
  }

  identity {
    type = "SystemAssigned"
  }
}
