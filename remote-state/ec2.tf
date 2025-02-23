
resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-07a9ee59fdaf1fb47"]
    instance_type = "t3.micro"

    tags = {
    Name = "db"
  }
  
}
