terraform {
  required_version = "1.4.6" //terraform的版本信息
  required_providers {
    alicloud = {
      source  = "hashicorp/alicloud" //source定义provider的源地址
      version = "1.205.0"            // version是provider 的版本号
    }
  }
}


