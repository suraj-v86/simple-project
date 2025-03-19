resource "aws_instance" "server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key
    subnet_id = var.subnet    

    vpc_security_group_ids = [var.sg]

    tags = {
      Name = "cicd-server"
    }
  
}

output "public_ip" {
    description = "The public ip of EC2 instance"
    value = aws_instance.server.public_ip
  
}