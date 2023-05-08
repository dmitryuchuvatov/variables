# Sample repo with input variable

See [this page](https://developer.hashicorp.com/terraform/language/values/variables) for the reference


# Prerequisites

Install and configure Terraform as per [official documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

# How To

## Clone the repository

```
git clone https://github.com/dmitryuchuvatov/variables.git
```

## Go into the directory

```
cd variables
```

## Initialize Terraform

```
terraform init
```

You should see the similar output:

```
Initializing the backend...

Initializing provider plugins...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## Run Terraform Apply

```
terraform apply -var myvar=test
```
When prompted, enter **yes** hit **Enter** to confirm:

```
Changes to Outputs:
  ~ myvar = "myvalue" -> "test"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes


Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

myvar = "test"
```


## Clean up

```
terraform destroy
```

You should see the following output:

```
Changes to Outputs:
  - myvar = "myvalue" -> null

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes


Destroy complete! Resources: 0 destroyed.
```



