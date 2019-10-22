provider "aws" {
    access_key = "${var.myaccesskey}"
    secret_key = "${var.mysecretkey}"
    region     = "${var.myregion}"
}

resource "aws_security_group" "appserver" {
    name        = "appserver"
  description = "Allow TLS inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
}

resource "aws_instance" "appserver" {
  ami= "${var.appserver_ami}"
  instance_type= "${var.appserver_instancetype}"
  key_name= "${var.appserver_keyname}"
  vpc_security_group_ids= ["${aws_security_group.appserver.id}"]

  network_interface {
    network_interface_id = "${aws_network_interface.foo.id}"
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
  connection {
    type= "ssh"
    user= "ubuntu"
    private_key= "${file("/cloudwatch.pem")}"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install tomcat7"
    ]
  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "172.16.10.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = "${aws_subnet.my_subnet.id}"
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}