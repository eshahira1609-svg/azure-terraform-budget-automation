provider "azurerm" {
    features {}
    subscription_id = "f71ba5e6-2338-40ae-9425-f17aece91758"
}


module "budgets" {
    source = "./modules/budget"


    for_each = toset(var.subscription_ids)
    subscription_id = each.value
}
