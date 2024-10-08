# this is mandatory user should apply
variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    
}
variable "instance_type" {
    
     type        = string
  description = "some test value"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Valid values for var: test_variable are (t3.micro t3.small, t3.medium)"
  } 
}
variable "security_group_ids" {
    type = list(string)
    
}