variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable  "vm_image" {
  type        = string
  default     = "ubuntu-2404-lts-oslogin"
  description = "Ubuntu release 24.04-lts"
}

variable "vms_resources" {      ###VM WEB & STORAGE vars
  type = map(object({
    platform_id    = string
    type_hdd       = string
    cores          = number
    memory         = number
    core_fraction  = number
  }))
  default = {
    web = {
      platform_id    = "standard-v3"
      type_hdd       = "network-hdd"
      cores          = 2
      memory         = 4
      core_fraction  = 20
    },
  }
}
