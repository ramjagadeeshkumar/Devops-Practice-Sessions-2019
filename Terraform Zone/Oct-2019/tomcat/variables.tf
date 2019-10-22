variable "myaccesskey" {
    type= "string"
}

variable "mysecretkey" {
    type= "string"  
}

variable "myregion" {
  type= "string"
  default= "ap-south-1"
}

variable "appserver_ami" {
  type= "string"
  default= "ami-03dcedc81ea3e7e27"
}

variable "appserver_instancetype" {
    type= "string"
    default= "t2.micro"
}

variable "appserver_keyname" {
  type= "string"
}



