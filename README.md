Terraform Azure Budget Automation

Automate Azure subscription budgets using Terraform and Azure DevOps. Scalable, configurable, and safe.

🚀 Project Overview

Create budgets per subscription automatically

Define amount, start date, and notification recipients per subscription

Protect budgets with prevent_destroy

Integrate with Azure DevOps pipeline for manual or automated execution

🗂Repository Structure
<img width="387" height="393" alt="image" src="https://github.com/user-attachments/assets/e04a587f-1fc4-4668-a9ce-cfa7f75ee1c8" />

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

