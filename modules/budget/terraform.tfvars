# Define the budgets for each subscription
# Key: Azure subscription ID
# Value: map of budget settings (amount, start date, contact emails)

subscription_budgets = {
  # Subscription for Cloud Team Project A
  "f71bxxxxxxxxxxxxxxxxxx758" = {
    amount        = 500                        # Monthly budget amount
    start_date    = "2026-01-01T00:00:00Z"    # Budget start date in UTC
    contact_emails = ["RotiJohn@t.org"]            # Recipients for budget alerts
  }

  # Subscription for Project B
  "cfd1xxxxxxxxxxxxxxxxxxb8d8bff" = {
    amount        = 1000
    start_date    = "2026-02-01T00:00:00Z"
    contact_emails = ["cloudops@t.org", "Oblongs@t.org"]
  }
}

