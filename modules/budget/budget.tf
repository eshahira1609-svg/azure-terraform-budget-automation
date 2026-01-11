resource "azurerm_consumption_budget_subscription" "monthly-budget-cloud-team-test-email"{
    name = "monthly-budget-cloud-team-test-email"
    subscription_id = var.subscription_id

    amount = 500
        time_grain = "Monthly"

    time_period {
        start_date = "2026-01-01T00:00:00Z"
        end_date   = "2026-12-01T00:00:00Z"
    }

    
lifecycle {
    prevent_destroy = true
  }


    notification {
        enabled = true 
        threshold = 80
        operator = "GreaterThan"
        threshold_type = "Actual"

        contact_emails = [
            "EfashahiraIskandar@schott.org"
        ]


    }

    notification{
        enabled = true 
        threshold = 5
        operator = "GreaterThan"
        threshold_type = "Forecasted"

        contact_emails = [
              "EfashahiraIskandar@schott.org"
        ]

    }

}

