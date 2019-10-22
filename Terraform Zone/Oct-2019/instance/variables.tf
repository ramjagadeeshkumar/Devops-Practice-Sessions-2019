variable "ami" {
  type= "string"
  default= "ami-009110a2bf8d7dd0a"
}
variable "instancetype" {
    type= "string"
    default= "t2.micro"
}
variable "keyname" {
    type= "string"
    default= "jenkinsmaster"
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