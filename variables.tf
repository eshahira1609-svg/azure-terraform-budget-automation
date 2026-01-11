variable "subscription_budgets" {
  type = map(object({
    amount         = number
    start_date     = string
    contact_emails = list(string)
  }))
  description = "Map of subscriptions to budgets and their details"
}
