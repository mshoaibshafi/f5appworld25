# f5appworld25
Repo for a breakout session : From DataCenter to Cloud: Automating F5  Big-IP with Terraform

# Step 1

## Rename "terraform.tfvars.org" > "terraform.tfvars"
## Update "terraform.tfvars" accordingly


# Step 2 
## Phase - 1 execution
## Add AWS Cloud Access Keys 
## `terraform init`
## `terraform plan`
## `terraform apply`


# Step 3
## Phase - 2 execution
## `terraform init`
## `terraform plan -var-file="phase-1.tfvars"`
## `terraform apply -var-file="phase-1.tfvars"`