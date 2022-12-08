provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t3.micro"
    security_groups = ["jekSG"]
    key_name      =  "ubuntu.pem"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
