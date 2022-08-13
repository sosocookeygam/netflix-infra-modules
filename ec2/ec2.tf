resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = "t2.micro"
    associate_public_ip_address = true

    tags = {
        Name = "netflix-web-server"
    }
    vpc_security_group_ids = [var.sg_id]
  
}