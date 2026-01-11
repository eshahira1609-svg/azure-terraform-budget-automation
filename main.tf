# Azure provider configuration
# The subscription_id is defined explicitly to scope provider operations
provider "azurerm" {
  features {}

  # Subscription used to authenticate and manage resources
  # In practice, this value is provided via variables or service connections
  subscription_id = "SUBSCRIPTION_ID_PLACEHOLDER"
}

# Budget module instantiation
# A single reusable module is applied across multiple subscriptions
# using for_each to ensure scalable and consistent budget enforcement
module "budgets" {
  source = "./modules/budget"

  # Iterate over all target subscriptions
  for_each = toset(var.subscription_ids)

  # Pass the current subscription to the module
  subscription_id = each.value
}
