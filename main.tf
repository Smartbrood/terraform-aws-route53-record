data "aws_route53_zone" "this" {
  name         = "${var.domain}"
  private_zone = "${var.private_zone}"
}

resource "aws_route53_record" "this" {
  zone_id = "${data.aws_route53_zone.this.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${split(",", var.ip)}"]
}
