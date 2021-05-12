# Terraform Heroku Demo

Basic Terraform script to show its [Heroku](https://registry.terraform.io/providers/heroku/heroku/latest/docs) power. Spins up an empty stack with a Ruby buildpack.

Similar setup to [our S3 Static Website Terraform Scripts](https://github.com/Niedziela-Solutions/terraform-s3-static-website).

## Requirements

- [Terraform](https://learn.hashicorp.com/terraform/getting-started/install)
- [Heroku Account and Authorization ENV variables exported](https://devcenter.heroku.com/articles/using-terraform-with-heroku#obtaining-an-authorization-token) or logged into Heroku

## Usage

1. `terraform init` - This will pull in the [Heroku Terraform provider](https://registry.terraform.io/providers/heroku/heroku/latest).
1. `cp environment.tfvars.example environment.tfvars` and change as needed (see _Variable Settings_ section)
1. Verify: `terraform plan -var-file=environment.tfvars`
1. Invoke: `terraform apply -var-file=environment.tfvars`

## Other Helpful Commands

- Destroy: `terraform destroy -var-file=environment.tfvars`

## Variable Settings

```
app_name = "YOUR_APP_NAME"
secret_key_base = "Rails SECRET_KEY_BASE"
heroku_stack = "heroku-20"
```

## Resources

- [Heroku's Terraform docs](https://devcenter.heroku.com/articles/using-terraform-with-heroku)
- [Terraform's Heroku docs](https://registry.terraform.io/providers/heroku/heroku/latest/docs)
