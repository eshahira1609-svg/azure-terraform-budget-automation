# Azure Budget for a specific subscription
# This module creates a monthly budget with notifications.

resource "azurerm_consumption_budget_subscription" "monthly_budget" {
  # Budget name – must be unique per subscription
  name            = var.budget_name
  
  # Subscription ID where this budget will apply
  subscription_id = var.subscription_id
  
  # Monthly budget amount (currency depends on your Azure subscription)
  amount          = var.amount
  
  # Budget is tracked on a monthly basis
  # Options: "Monthly", "Quarterly", "Annually"
  time_grain      = "Monthly"

  # Budget time period
  time_period {
    # Start date for budget tracking
    start_date = var.start_date
    # Optional: add end_date if you want a specific end date
    # end_date   = "YYYY-MM-DDT00:00:00Z"
  }

  # Prevent accidental destruction of the budget
  lifecycle {
    prevent_destroy = true
  }

  # Notification configuration
  notification {
    # Enable or disable this alert
    enabled        = true
    
    # Trigger when actual spending exceeds threshold %
    threshold      = 80
    
    # Comparison operator – GreaterThan, LessThan, EqualTo
    operator       = "GreaterThan"
    
    # Threshold type – Actual or Forecasted
    threshold_type = "Actual"
    
    # Emails that will receive the alert
    contact_emails = var.contact_emails
  }
}
