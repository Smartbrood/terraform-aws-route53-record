output "fqdn" {
  description = "Fully qualified domain name"
  value = "${aws_route53_record.this.fqdn}"
}
