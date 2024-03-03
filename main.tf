provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"
  key_name      = "my_ec2"
  subnet_id     = "subnet-0338defc25d31a0eb"
  associate_public_ip_address = true
  tags = {
    Name = "my_ec2_instance"
  }
}
