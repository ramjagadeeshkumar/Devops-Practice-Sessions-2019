variable "ami" {
  type= "string"
  default= "ami-009110a2bf8d7dd0a"
}

variable "secgroupid" {
    type= "string"
    default= "sg-00a12cc7572b518ca"
}

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

variable "appserver_instancetype" {
    type= "string"
    default= "t2.micro"
}

variable "appserver_keyname" {
  type= "string"
}