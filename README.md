# Sample repo with input variable
It creates a VPC in AWS, you will need to specify the region (e.g **eu-central-1** or another one from [the list](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html)


See [this page](https://developer.hashicorp.com/terraform/language/values/variables) for the reference


# Prerequisites

Install and configure Terraform as per [official documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

Configure [AWS credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

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
- Finding hashicorp/aws versions matching "~> 4.0"...
- Installing hashicorp/aws v4.66.1...
- Installed hashicorp/aws v4.66.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

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
terraform apply
```
When prompted, enter the desired region and hit **Enter** to confirm:

```
var.aws_region
  AWS region

  Enter a value: eu-central-1
```
Then, enter **yes** and hit **Enter** to apply the changes:

```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.example will be created
...

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.example: Creating...
aws_vpc.example: Creation complete after 2s [id=vpc-08e40fc2ff9efcff4]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

## Verify the results and clean up

Optionally, you can check the AWS console to see if the VPC is available:

![Screenshot 2023-05-08 at 09 31 17](https://user-images.githubusercontent.com/119931089/236763146-2f650856-146b-4c8c-a931-4902500ae779.png)

Once it's done, proceed with 

```
terraform destroy
```
Than, enter the same region and hit **Enter**:

```
var.aws_region
  AWS region

  Enter a value: eu-central-1

aws_vpc.example: Refreshing state... [id=vpc-08e40fc2ff9efcff4]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  - destroy

Terraform will perform the following actions:

  # aws_vpc.example will be destroyed
```

Finally, enter **yes** hit **Enter**:

```
  Enter a value: yes

aws_vpc.example: Destroying... [id=vpc-08e40fc2ff9efcff4]
aws_vpc.example: Destruction complete after 1s

Destroy complete! Resources: 1 destroyed.
```



