
variable "private_key_path" {
  description = <<DESCRIPTION
Path to the SSH private key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.key
Defaults to: ~/.ssh/id_rsa
DESCRIPTION
  default = "~/.ssh/id_rsa"
}

variable "win_username" {
	description = "Windows Host default username to use"
	type = "string"
	default = "Administrator"
}

variable "win_password" {
	description = "Windows Host default password to use"
	type = "string"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
}

# uses AWS AMI Windows 2016 Server Base
# See https://aws.amazon.com/marketplace/server/configuration?productId=13c2dbc9-57fc-4958-922e-a1ba7e223b0d for details
variable "windows_2016_dc_ami" {
  type    = string
  default = "ami-0df99cdd65bce4245"
}

variable "splunk_server_private_ip" {
  description = "private ip of splunk server"
}

variable "windows_2016_dc_instance" { }

variable "vpc_security_group_ids" { }

variable "vpc_subnet0_id" { }

variable "windows_2016_dc_client" {
  default = "0"
}