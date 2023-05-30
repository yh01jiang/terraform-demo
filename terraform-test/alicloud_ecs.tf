// 创建ecs的实例  alicloud_ecs.tf 文件

data "alicloud_images" "images_ds" {
  owners       = "system"
  name_regex   = "^centos_7"
  os_type      = "linux"
  architecture = "x86_64"
  status       = "Available"
  output_file  = "./test.json"
}

// 把值传递出去
output "image_name" {
  value = data.alicloud_images.images_ds.images[3].id


}

// local本地变量

locals {
  ecs_name = "barry-ecs"
}
resource "alicloud_instance" "myecs" {


  provider          = alicloud.hangzhou
  availability_zone = "cn-hangzhou-j" //实例可用区
  # availability_zone       = var.region
  security_groups         = alicloud_security_group.group.*.id
  instance_type           = "ecs.u1-c1m1.large"
  system_disk_category    = "cloud_auto" // 新版本使用cloud_auto
  system_disk_name        = "tf_system_disk_name"
  system_disk_description = "tf_system_disk_description"
  image_id                = data.alicloud_images.images_ds.images[3].id
  # instance_name              = "mytestecs"
  # instance_name = var.ecs_info["ecs_name"]
  instance_name              = local.ecs_name
  vswitch_id                 = alicloud_vswitch.vsw.id
  internet_max_bandwidth_out = 1
  internet_charge_type       = "PayByTraffic"
  password                   = "root@123"
}