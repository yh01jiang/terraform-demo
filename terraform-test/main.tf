provider "alicloud" {
  # access_key = var.alicloud_access_key
  # secret_key = var.alicloud_secret_key
  # region     = var.region
  # alias      = "hangzhou" //别名
  access_key = "LTAI5tJ67htkdiDav7zBUqA5"
  secret_key = "YANAg6O3J4p9yKjUaBGpEffHxwna3p"
  region     = "cn-hangzhou"
  alias      = "hangzhou" //别名

}

// 默认的provider,没有会报错
provider "alicloud" {
  # access_key = var.alicloud_secret_key
  # secret_key = var.alicloud_secret_key
  # region     = "cn-shanghai"
  access_key = "LTAI5tJ67htkdiDav7zBUqA5"
  secret_key = "YANAg6O3J4p9yKjUaBGpEffHxwna3p"
  region     = "cn-shanghai"


}

provider "alicloud" {
  # access_key = var.alicloud_secret_key
  # secret_key = var.alicloud_secret_key
  # region     = var.region
  # alias      = "beijing"
  access_key = "LTAI5tJ67htkdiDav7zBUqA5"
  secret_key = "YANAg6O3J4p9yKjUaBGpEffHxwna3p"
  region     = "cn-beijing"
  alias      = "beijing"

}