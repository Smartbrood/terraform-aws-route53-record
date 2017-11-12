terraform-aws-route53-record
============================

Terraform module to create one Route53 DNS record for existing zone.


Usage
-----

```hcl
module "route53-server-name" {
  source       = "Smartbrood/route53-record/aws"
  domain       = "mydomain.org"
  name         = "server_name"
  ip           = "10.0.0.5, 10.0.0.6"

  private_zone = "false"
  type    = "A"
  ttl     = "30"

}

module "route53-server-name" {
  source       = "Smartbrood/route53-record/aws"
  domain       = "mydomain.org"
  name         = "server_name"
  ip           = "10.0.0.5"
}

output "domain_names" {
  value       = "${module.route53-server-name.fqdn}"
}
```


Authors
-------

Module managed by [Smartbrood LLC](https://github.com/Smartbrood).


License
-------

Apache 2 Licensed. See LICENSE for full details.
