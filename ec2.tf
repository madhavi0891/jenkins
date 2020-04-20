provider "aws" {
  region                 = "us-east-1"
  access_key             = "AKIA6BVISBY5KYG6NCXG"
  secret_key             = "8P+Ql683+bGI0pfGaEnrX+tWZc4ES/azJx0FZUYx"
}
resource "aws_instance" "example" {

  ami                    = "ami-0affd4508a5d2481b"
  instance_type          = "t2.micro"
  key_name               = "malthumkar"
  vpc_security_group_ids = ["CentOS 7 -x86_64- - with Updates HVM-2002_01-AutogenByAWSMP-3"]

  tags = {
    name   = "terraform_instance"
  }
}
