variable "alicloud_access_key" {
  type      = string
  sensitive = true

}

variable "alicloud_secret_key" {
  type      = string
  sensitive = true

}

variable "region" {
  type = string

}

// 声明变量

variable "dns_record" {
  type        = map(string)
  description = "define dns name"

}

variable "env_list" {
  type        = list(string)
  description = "deploy env name"

}

variable "ecs_info" {
  type = object({
    ecs_image = string,
    ecs_name  = string
  })

}