
resource "aws_route53_record" "wordpress" {
  zone_id = "Z03988463DH24FO8K74P7"
  name    = "wordpress.azizvelat.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}