resource "aws_route53_record" "www" {
  zone_id =  "Z03988463DH24FO8K74P7"
  name    =  "blog.azizvelat.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}
