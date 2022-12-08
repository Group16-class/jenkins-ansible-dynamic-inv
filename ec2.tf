provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t3.micro"
    security_groups = ["jkSG"]
    key_name      =  "key29"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
