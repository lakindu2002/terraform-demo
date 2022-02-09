# define provider to help talk to a cloud API
provider "aws" {
  region                  = "us-east-1"              # provision resources in Virginia.
  shared_credentials_file = "$HOME/.aws/credentials" # add default aws config file
}

/*
to define a resource.
    resource "<PROVIDER-NAME>_<RESOURCE-TYPE>" "TERRAFORM_NAME"{
        RESOURCE-CONFIG = RESROUCE-CONFIG-VALUE
    }
*/

# defining an EC2 resource
resource "aws_instance" "first_ubuntu_ec2" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  tags = {
    Name = "second_tag",
  }
}

# terraform init -> it will look at all .tf files and will look at all providers in each tf, and download the provider code
# terraform plan -> it shows all changes that will take place in the infrastructure.
# terraform apply -> it will take a look at code and ask if you want to do it, only if yes -> it will provision the infrastructure.

# to delete the infrastructure -> terraform destroy

# to delete one resource -> remove the declared resource.
