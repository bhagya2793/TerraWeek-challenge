output "instance_ids" {
  value = {
    for name, server in module.servers :
    name => server.instance_id
  }
}

output "public_ips" {
  value = {
    for name, server in module.servers :
    name => server.public_ip
  }
}
