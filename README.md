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

## Prerequisites

1. **Azure Service Connection**  
   - Type: Service Principal  
   - Required permissions:  
     - **Cost Management Reader** – to read and create budgets  
     - **Reader** – at subscription or resource group scope to query resources  
     - **Storage Blob Data Contributor** – for the storage account/container where Terraform state is stored  
   - Ensure the service principal credentials are valid in Azure DevOps.  

2. **Terraform**  
   - Version: 1.8.5 (as specified in the pipeline)  

3. **Azure Storage**  
   - Resource group and storage account must exist for backend state  
   - Container name must exist (`tfstate-budget`)  

