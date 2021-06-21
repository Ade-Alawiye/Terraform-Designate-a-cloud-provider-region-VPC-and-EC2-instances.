variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "UdacityT2"
}
variable "instance_count" {
  type = number
  default = "4"
}
