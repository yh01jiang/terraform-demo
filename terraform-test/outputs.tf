# output "dev_dns_name" {
#     value = alicloud_dns_record.record.host_record

# }

output "my_env" {
  value     = var.env_list[0]
  sensitive = false

}

output "my_ak" {
  value     = var.alicloud_access_key
  sensitive = true

}

output "region" {
    value = var.region
  
}