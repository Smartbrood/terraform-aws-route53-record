variable "domain" {
  description = "Domain zone name"
}

variable "name" {
  description = "Resource record name"
}

variable "private_zone" {
  description = "Set true for private zone"
  default = "false"
}

variable "ip" {
  description = "String with ip addresses, separated by comma"
}

variable "type" {
  description = "The record type"
  default = "A"
}

variable "ttl" {
  description = "The TTL of the record"
  default = "30"
}
