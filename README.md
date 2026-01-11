Terraform Azure Budget Automation

Automate Azure subscription budgets using Terraform and Azure DevOps. Scalable, configurable, and safe.

🚀 Project Overview

Create budgets per subscription automaticallyDefine amount, start date, and notification recipients per subscription
Protect budgets with prevent_destroy
Integrate with Azure DevOps pipeline for manual or automated execution

🗂Repository Structure
terraform-azure-budget-automation/
├── main.tf
├── variables.tf
├── providers.tf
├── outputs.tf
├── terraform.tfvars.example
├── azure-pipelines.yml
├── .gitignore
├── README.md
└── modules/
    └── budget/
        ├── budget.tf
        └── variables.tf



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

