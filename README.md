# azure-terraform-budget-automation
Terraform based automation for enforcing Azure subscription budgets using Azure DevOps pipelines.

# Azure Terraform Budget Automation

## Overview
This project automates Azure subscription budget creation using Terraform and Azure DevOps.

## Problem Statement
Managing consistent cost budgets across multiple Azure subscriptions is operationally complex.

## Solution
Terraform is used to define Azure budgets. Azure DevOps executes the deployment through a controlled pipeline.

## Architecture
Text diagram here.

## Technologies
- Terraform
- Azure Cost Management
- Azure DevOps Pipelines

## Key Design Decisions
- Manual pipeline trigger
- Explicit subscription list
- Centralized Terraform state
