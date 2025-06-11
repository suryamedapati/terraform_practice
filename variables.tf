variable "ami_id"{
type = string
default = "ami-09c813fb71547fc4f"
description = "ami_id"
} 

variable "instance"{
    default = "t3.micro"
}

variable "sg_name"{
    default = "allow_all"
}
variable "sg_description"{
default = "allow all traffic"
}

variable "from_port"{
    default = 0
}

variable "to_port"{
default = 0
}

variable "protocol"{
    default = "-1"
}

variable "cidr_blocks"{
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks"{
    default = ["::/0"]
}
        