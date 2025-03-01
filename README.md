# f5appworld25
Breakout session : From DataCenter to Cloud: Automating F5  Big-IP with Terraform

## Step 1 : Phase - 1 execution
- cd phase-1/
- rename "terraform.tfvars.org" > "terraform.tfvars"
- update "terraform.tfvars" accordingly
- add AWS Cloud Access Keys 
- run :
```
    terraform init
    terraform plan
    terraform apply
```

## Step 2 : Phase - 2 execution
- cd ../phase-2/
- rename "terraform.tfvars.org" > "terraform.tfvars"
- run :
```
    terraform init
    terraform plan -var-file="phase-1.tfvars"
    terraform apply -var-file="phase-1.tfvars"
```
## Step 3 : Phase - 3 execution
- cd ../phase-3/
- check "nodes.tf" and update IPs according to your backend servers
- check "pools.tf" and update the node IPs accordingly
- run :
```
    terraform init
    terraform plan -var-file="phase-1.tfvars"
    terraform apply -var-file="phase-1.tfvars"
```