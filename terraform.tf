variable"AWS_ACCESS_KEY" {}
variable"AWS_SECRET_KEY" {}

provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
  region     = "us-east-1"
}
resource "aws_instance" "web" {
 ami = "ami-4fffc834"
 instance_type = "t2.micro"
 key_name = "ec2-mounika02"
 tags{
    Name = "Terraform Instance"

 }
}
