# Quick and dirty EC2 instance deployment as a sandbox for this project.

## Usage
- Create a `terraform.tfvars` file and specify your key name and region
```
ami_key_pair_name = "savanaotter"
region_name = "us-central-1"
```
- `terraform init`
- `terraform plan`
- `terraform apply`
