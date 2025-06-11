resource "aws_instance" "roboshop" {
  ami           = var.ami_id
  instance_type = var.instance
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_all" {
    name        = var.sg_name
    description = var.sg_description

    ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = var.protocol
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }
    egress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = var.protocol
        cidr_blocks      = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }

    tags = {
        Name = "allow-all"
    }
}