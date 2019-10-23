resource "aws_vpc" "venkyvpc" {
    cidr_block       = "192.168.0.0/16"
    instance_tenancy = "dedicated"
    tags = {
        name = "venkysvpc"
    }
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0123b531fc646552f"
    instance_type = "t2.micro"
}