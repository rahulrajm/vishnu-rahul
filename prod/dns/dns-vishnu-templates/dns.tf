module XXmodulenameXX {
  source        = "../../modules/weighted-dns/"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "XXrecord_nameXX"
  record_type   = "XXrecord_typeXX"
  env           = "XXenvXX"
  ttl           = "XXttlXX"
  target_record = "XXtarget_recordXX"
  weight_dns    = ["XXweight_dns-1XX", "XXweight_dns-2XX", "XXweight_dns-3XX"]
  setid         = ["XXsetid-1XX", "XXsetid-2XX", "XXsetid-3XX"]
  weight_record = ["XXweight_record-1XX", "XXweight_record-2XX", "XXweight_record-3XX"]
}
