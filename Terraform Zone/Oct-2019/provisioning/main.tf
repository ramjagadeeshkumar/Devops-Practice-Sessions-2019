resource "aws_instance" "spec2" {
    ami= "${var.ami}"
    instance_type= "${var.appserver_instancetype}"
    key_name= "${var.appserver_keyname}"
    vpc_security_group_ids="${aws_security_group.appserver.id}"

connection {
    type = "ssh"
    user = "ubuntu"
    private_key = "${file("./cloudwatch")}"
}

provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install git tree nano -y",
    ]
  }
}