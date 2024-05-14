variable "linode_token" {
  type = string
  description = "Linode API token"
}

variable "linode_public_keys" {
  type = string
  description = "Allowed SSH Keys to access linode instance"
}

variable "root_pass" {
  type = string
  description = "Linode instance root password"
}