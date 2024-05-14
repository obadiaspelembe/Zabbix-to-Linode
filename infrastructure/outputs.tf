output "account_email" {
  value = data.linode_account.account.email
}

output "server_host" {
  value = linode_instance.web.ip_address
  description = "linode instance public IP address"
}

output "linode_password" {
  value = linode_instance.web.root_pass
  description = "linode instance root password"
  sensitive = true
}

