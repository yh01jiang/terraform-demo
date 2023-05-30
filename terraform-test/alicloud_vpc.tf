//vpc专有网络
resource "alicloud_vpc" "vpc" {
  provider   = alicloud.hangzhou
  vpc_name   = "tf_test"
  cidr_block = "172.16.0.0/12"
}

//switch交换机
resource "alicloud_vswitch" "vsw" {
  provider   = alicloud.hangzhou
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = "172.16.0.0/24"
  zone_id    = "cn-hangzhou-j"
}

