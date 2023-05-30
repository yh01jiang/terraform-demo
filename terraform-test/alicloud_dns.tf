# resource "alicloud_dns_record" "record" {
#   name        = "zeyang.site"                     //域名
# #   host_record = "mytest"                         //解析的主机名
#   host_record = var.dns_record["dev"]               // 采用变量优化后的          
#   type        = "A"                               // 类型
#   value       = alicloud_instance.myecs.public_ip // 引用之前定义的ecs的公网ip

# }