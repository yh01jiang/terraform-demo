// security_group 安全组
//  资源          类型              自己定义名字
resource "alicloud_security_group" "group" {
  name                = "demo-group"
  vpc_id              = var.vpc_id
  security_group_type = "normal" // 普通安全组

}

// security_group_role规则
resource "alicloud_security_group_rule" "allow_80_tcp" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "80/80"
  priority          = 1
  security_group_id = alicloud_security_group.group.id // 引用安全组
  cidr_ip           = "0.0.0.0/0"
}

// security_group_role规则
# 'intranet' 用于指定内网类型的安全组规则，而 'internet' 则用于指定公网类型的安全组规则。
# 当安全组类型为vpc或指定source_security_group_id时，nic_type应设置为intranet
resource "alicloud_security_group_rule" "allow_22_tcp" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.group.id
  cidr_ip           = "0.0.0.0/0"
}