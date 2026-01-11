# Azure subscription ID where the budget will be applied
# Example: "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
variable "subscription_id" {
  type        = string
  description = "Azure subscription ID where the budget is applied"
}

# Name of the budget to create
# This should be unique per subscription
variable "budget_name" {
  type        = string
  description = "Name of the budget"
}

# Monthly budget amount in EUR (or your currency)
# Example: 500
variable "amount" {
  type        = number
  description = "Monthly budget amount"
}

# Budget start date in YYYY-MM-DD format
# Example: "2026-01-01"
variable "start_date" {
  type        = string
  description = "Budget start date in YYYY-MM-DD format"
}

# Email addresses to receive budget alerts
# Can be multiple addresses, e.g. ["user1@org.com", "user2@org.com"]
variable "contact_emails" {
  type        = list(string)
  description = "Email addresses for budget notifications"
}

#“Values for these variables are typically provided in terraform.tfvars or overridden in the root module when calling this module.”
