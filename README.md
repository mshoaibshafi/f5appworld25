# f5appworld25
Breakout session : From DataCenter to Cloud: Automating F5  Big-IP with Terraform

# Step 1 : Phase - 1 execution
### cd phase-1/
### Rename "terraform.tfvars.org" > "terraform.tfvars"
### Update "terraform.tfvars" accordingly
### Add AWS Cloud Access Keys 
### run :
### `terraform init`
### `terraform plan`
### `terraform apply`

# Step 3 : Phase - 2 execution
### cd ../phase-2/
### run :
### `terraform init`
### `terraform plan -var-file="phase-1.tfvars"`
### `terraform apply -var-file="phase-1.tfvars"`