resource "aws_instance" "spec2" {
    ami= "${var.ami}"
    instance_type= "${var.instancetype}"
    key_name= "${var.keyname}"
}

resource "aws_security_group" "spsg" {
    name        = "spsg"
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