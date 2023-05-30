region = "cn-hangzhou"

alicloud_access_key = "LTAI5tJ67htkdiDav7zBUqA5"
alicloud_secret_key = "YANAg6O3J4p9yKjUaBGpEffHxwna3p"


//那么我们根据key去定义环境，value就是每个环境定义的域名
dns_record = {
  "dev"  = "dev",
  "stag" = "stag",
  "prod" = "prod"
}

// 列表
env_list = ["dev", "stag", "prod"]

// 对象
ecs_info = {
  ecs_image = "centos_7_5_x64_20G_alibase_20211130.vhd"
  ecs_name  = "mydemoecs"
}

