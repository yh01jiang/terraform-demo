variable "alicloud_access_key" {
  type      = string
  default   = "LTAI5tJ67htkdiDav7zBUqA5"
  sensitive = true

}

variable "alicloud_secret_key" {
  type      = string
  default   = "YANAg6O3J4p9yKjUaBGpEffHxwna3p"
  sensitive = true

}

variable "region" {
  default = "cn-hangzhou"
  type    = string
  sensitive = true
  description = "region name"

}

