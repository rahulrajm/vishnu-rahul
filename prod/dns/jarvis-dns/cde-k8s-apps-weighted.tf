// weight_dns, setid and weight_record will decide the weightage. Its takes the weightage in the order which is defined in the list.

iffmodule "prod-api-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "prod-api-weighted"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["10", "10", "10", "10"]
}
#
module "prod-api-int-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "prod-api-int"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["10", "10", "10", "10"]
}

module "prod-api-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-dark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_ext_v2
  ttl           = ["10", "10", "10"]
}

module "prod-api-dark-int-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-dark-int"
  env           = "cde"
  weight_dns    = ["50","50","0","0"]
  weight_record = var.cde_weight_v2_int
  ttl           = ["10", "10", "10", "10"]
}

module "prod-api-dashboard-merchant-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-dashboard-merchant"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["10", "10", "10", "10"]
}

module "prod-api-dashboard-admin-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-dashboard-admin"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["10", "10", "10", "10"]
}

module "credcase-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "credcase-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "credcase-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "credcase"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "vault-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "vault"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "vault-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "vault-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "0", "100"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "hvault-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "hvault"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "hvault-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "hvault-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "0", "100"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "mozart-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-test"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-test-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-test-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-whitelisted-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-whitelisted"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-whitelisted-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-whitelisted-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-pagination-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-pagination"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-pagination-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-pagination-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "payments-card-live-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-card"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "payments-card-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-card-test"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["30", "30", "30", "30"]
}

module "payments-card-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-card-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "payments-card-dark-concierge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-card-dark-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "payments-card-weighted-internal" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-card-int"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "payments-card-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-card-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "payments-card-dark-weighted-internal" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-card-dark-int"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "bin-service-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "bin-service-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "bin-service-dark-concierge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "bin-service-dark-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "bin-service-dark-sec-concierge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "bin-service-dark-sec-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "bin-service-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "bin-service"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "bin-service-dark-grpc-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "bin-service-dark-grpc"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = ["cde-green-int-v2-grpc.razorpay.com", "cde-blue-int-v2-grpc.razorpay.com", "cde-white-int-v2.razorpay.com"]
  ttl           = ["60", "60", "60"]
}

module "express-cde-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "express"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_mtls
  ttl           = ["50", "50", "50", "50"]
}

module "express-statuscake-cde-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "express-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "express-dark-cde-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "express-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "0", "100"]
  weight_record = var.cde_weight_mix_v1_v2_mtls
  ttl           = ["50", "50", "50", "50"]
}

module "pmm-cde-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "pmm"
  env           = "cde"
  weight_dns    = ["0", "100", "0"]
  weight_record = var.cde_weight_record_concierge_v2
  ttl           = ["50", "50", "50"]
}

module "maxwell-payments-card-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "maxwell-payments-card"
  env           = "cde"
  weight_dns    = ["100", "0", "0"]
  weight_record = var.cde_weight_record_concierge_v2
  ttl           = ["50", "50", "50"]
}

module "maxwell-api-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "maxwell-api"
  env           = "cde"
  weight_dns    = ["100", "0", "0"]
  weight_record = var.cde_weight_record_concierge_v2
  ttl           = ["50", "50", "50"]
}

module "maxwell-unfiltered-api-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "maxwell-unfiltered-api"
  env           = "cde"
  weight_dns    = ["100", "0", "0"]
  weight_record = var.cde_weight_record_concierge_v2
  ttl           = ["50", "50", "50"]
}

module "maxwell-reporting-api-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "maxwell-reporting-api"
  env           = "cde"
  weight_dns    = ["100", "0", "0"]
  weight_record = var.cde_weight_record_concierge_v2
  ttl           = ["50", "50", "50"]
}

module "maxwell-auth-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "maxwell-auth-api"
  env           = "cde"
  weight_dns    = ["100", "0", "0"]
  weight_record = var.cde_weight_record_concierge_v2
  ttl           = ["50", "50", "50"]
}

module "maxwell-unfiltered-api-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "maxwell-unfiltered-api-test"
  env           = "cde"
  weight_dns    = ["100", "0", "0"]
  weight_record = var.cde_weight_record_concierge_v2
  ttl           = ["50", "50", "50"]
}

module "prod-api-cron-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-cron"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["10", "10", "10", "10"]
}

module "terminals-live-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "terminals-live"
  env           = "cde"
  weight_dns    = ["0", "0", "49", "49", "2"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60", "60"]
}

module "terminals-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "terminals-test"
  env           = "cde"
  weight_dns    = ["0", "0", "49", "49", "2"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60", "60"]
}

module "terminals-dark-live-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "terminals-dark-live"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "terminals-dark-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "terminals-dark-test"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "terminals-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "terminals-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "terminals-statuscake-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "terminals-statuscake-test"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "api-static-weighted" {
  source        = "../../modules/weighted-dns/"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-static"
  record_type   = "CNAME"
  env           = "cde"
  ttl           = "60"
  target_record = "cde-api-static-weighted.razorpay.com"
  weight_dns    = ["100"]
  setid         = ["cde-blue"]
  weight_record = [data.aws_lb.cde-blue-static-nlb.dns_name]
}

module "authz-admin-concierge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "authz-admin-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "authz-enforcer-concierge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "authz-enforcer-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "authz-admin-internal-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "authz-admin-internal"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "authz-enforcer-internal-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "authz-enforcer-internal"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "authz-admin-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "authz-admin-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "authz-enforcer-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "authz-enforcer-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "authz-enforcer-xplatform-internal-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "authz-enforcer-xplatform-internal"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "kong-edge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "edge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "kong-edge-postgres-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "edge-postgres"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_concierge
  ttl           = ["60", "60", "60"]
}

module "kong-edge-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "edge-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "kong-edge-postgres-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "edge-postgres-dark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_concierge
  ttl           = ["60", "60", "60"]
}

module "kong-admin-edge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "edge-admin-internal"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "kong-postgres-admin-edge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "edge-postgres-admin-internal"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_int
  ttl           = ["30", "30", "30"]
}

module "kong-admin-rate-limiter-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "kong-rate-limiter-internal"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "kong-postgres-admin-rate-limiter-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "kong-postgres-rate-limiter-internal"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_concierge
  ttl           = ["60", "60", "60"]
}

module "kong-admin-lambda-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "kong-lambda-internal"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "kong-postgres-admin-lambda-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "kong-postgres-lambda-internal"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_concierge
  ttl           = ["60", "60", "60"]
}

module "konga-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "konga"
  env           = "cde"
  weight_dns    = ["0", "0", "0", "100"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "axisbsubscrip" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "axisbsubscrip"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["10", "10", "10", "10"]
}

module "axisbpages" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "axisbpages"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["10", "10", "10", "10"]
}

module "axisbpayments" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "axisbpayments"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["10", "10", "10", "10"]
}

module "prod-api-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_ext_v2
  ttl           = ["10", "10", "10"]
}

module "prod-mozart-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_int
  ttl           = ["30", "30", "30"]
}

module "prod-mozart-test-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-test-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_int
  ttl           = ["30", "30", "30"]
}

module "prod-mock-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mock-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_int
  ttl           = ["30", "30", "30"]
}

module "prod-mock-go-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mock-go-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_ext
  ttl           = ["30", "30", "30"]
}

module "prod-mock-go-api-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mock-go-api-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_int
  ttl           = ["30", "30", "30"]
}

module "prod-mock-test-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mock-test-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_int
  ttl           = ["30", "30", "30"]
}

module "prod-mock-go-tls-hallmark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mock-go-tls-hallmark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_int
  ttl           = ["30", "30", "30"]
}

module "mandate-manager-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.hq.id
  record_name   = "api-weighted"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_mandate
  ttl           = ["60", "60", "60"]
}

module "mandate-manager-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.hq.id
  record_name   = "api-dark"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_mandate
  ttl           = ["60", "60", "60"]
}

module "mandate-manager-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.hq.id
  record_name   = "api-statuscake"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_mandate
  ttl           = ["60", "60", "60"]
}

module "payouts-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payouts"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["30", "30", "30", "30"]
}

module "payouts-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate/"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payouts-statuscake"
  env           = "cde"
  ttl           = ["10", "10", "10", "10"]
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
}

module "mutating-webhook-cde-green" {
  source         = "../../modules/dns/"
  zone_id        = data.aws_route53_zone.com.id
  record_name    = ["mutating-webhook-cde-green"]
  record_type    = "CNAME"
  ttl            = "300"
  target_records = ["cde-green-int-v2.razorpay.com"]
}

module "mutating-webhook-cde-blue" {
  source         = "../../modules/dns/"
  zone_id        = data.aws_route53_zone.com.id
  record_name    = ["mutating-webhook-cde-blue"]
  record_type    = "CNAME"
  ttl            = "300"
  target_records = ["cde-blue-int-v2.razorpay.com"]
}

module "stores" {
  source      = "../../modules/weighted-dns-no-intermediate"
  zone_id     = data.aws_route53_zone.com.id
  record_name = "stores"
  env         = "cde"
  weight_dns  = ["0", "0", "50", "50"]

  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["10", "10", "10", "10"]
}

module "prod-pg-router-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "pg-router-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = ["cde-blue-concierge.razorpay.com", "cde-green-concierge.razorpay.com", "cde-blue-concierge-v2.razorpay.com", "cde-green-concierge-v2.razorpay.com", "cde-white-concierge.razorpay.com"]
  ttl           = ["60", "60", "60", "60"]
}

module "issuer-tokenization-demo" {
  source      = "../../modules/weighted-dns-no-intermediate"
  zone_id     = data.aws_route53_zone.com.id
  record_name = "cardholder-portal-demo"

  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_ext
  ttl           = ["10", "10", "10"]
}

module "fulcrum-visa-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-visa"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-euronet-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-euronet"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-visa-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-visa-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-euronet-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-euronet-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-visa-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-visa-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-euronet-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-euronet-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-visa-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-visa-dark-int"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-euronet-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-euronet-dark-int"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-processing-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-processing-dark-int"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-axis-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-axis-dark-int"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-mastercard-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-mastercard-dark-int"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-mindeed-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-mindeed-dark-int"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "pg-router-scheduler" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "pg-router-scheduler"
  env           = "cde"
  weight_dns    = ["50", "50", "0", "0"]
  weight_record = var.cde_weight_mix_pg_router_v1_v2_ext
  ttl           = ["60", "60", "60", "60"]
}

module "pg-router-scheduler-internal" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "pg-router-scheduler-int"
  env           = "cde"
  weight_dns    = ["50", "50", "0", "0"]
  weight_record = var.cde_weight_mix_pg_router_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "pg-router-dark-scheduler" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "pg-router-dark-scheduler"
  env           = "cde"
  weight_dns    = ["50", "50", "0", "0"]
  weight_record = var.cde_weight_mix_pg_router_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "pg-router-internal" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "pg-router-int"
  env           = "cde"
  weight_dns    = ["50", "50", "0", "0"]
  weight_record = var.cde_weight_mix_pg_router_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "pg-router-dark-internal" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "pg-router-dark-int"
  env           = "cde"
  weight_dns    = ["50", "50", "0", "0"]
  weight_record = ["cde-blue-int-v2.razorpay.com", "cde-green-int-v2.razorpay.com", "cde-blue-int.razorpay.com", "cde-green-int.razorpay.com"]
  ttl           = ["60", "60", "60", "60"]
}

module "validate-image-webhook-cde-green" {
  source         = "../../modules/dns/"
  zone_id        = data.aws_route53_zone.com.id
  record_name    = ["validate-image-webhook-cde-green"]
  record_type    = "CNAME"
  ttl            = "300"
  target_records = ["cde-green-int-v2.razorpay.com"]
}

module "validate-image-webhook-cde-blue" {
  source         = "../../modules/dns/"
  zone_id        = data.aws_route53_zone.com.id
  record_name    = ["validate-image-webhook-cde-blue"]
  record_type    = "CNAME"
  ttl            = "300"
  target_records = ["cde-blue-int-v2.razorpay.com"]
}

module "fulcrum-consul" {
  source         = "../../modules/dns/"
  zone_id        = data.aws_route53_zone.com.id
  record_name    = ["fulcrum-consul-int"]
  record_type    = "CNAME"
  ttl            = "300"
  target_records = ["cde-green-int-v2.razorpay.com"]
}

#module "fulcrum-consul" {
#  source         = "../../modules/dns/"
#  zone_id        = "${data.aws_route53_zone.com.id}"
#  record_name    = ["fulcrum-consul-int"]
#  record_type    = "CNAME"
#  ttl            = "300"
#  target_records = ["cde-green-int.razorpay.com"]
#}

module "prod-api-whatsapp" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-whatsapp"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = var.cde_weight_record_ext
  ttl           = ["10", "10", "10"]
}

module "dashboard-whitelabel-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "whitelabel-dashboard-weighted"
  env           = "cde"
  ttl           = ["10", "10", "10", "10"]
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_all_v1_v2_ext
}

module "fulcrum-connection-visa-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-visa-int"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-euronet-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-euronet-int"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-axis-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-axis-int"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-mastercard-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-mastercard-int"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-mindeed-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-mindeed-int"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-processing-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-processing-int"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-visa-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-visa-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-euronet-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-euronet-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-axis-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-axis-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-mastercard-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-mastercard-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-connection-mindeed-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-connection-mindeed-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "fulcrum-processing-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "fulcrum-processing-statuscake"
  env           = "cde"
  weight_dns    = var.cde_weight_fulcrum
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "accounts-receivable-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "accounts-receivable"
  env           = "cde"
  weight_dns    = var.cde_weight_dns
  weight_record = var.cde_weight_record_ext
  ttl           = ["10", "10", "10"]
}

module "business-reporting-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "business-reporting"
  env           = "cde"
  weight_dns    = var.cde_weight_dns
  weight_record = var.cde_weight_record_ext_v2
  ttl           = ["10", "10", "10"]
}

module "prod-gimli-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "prod-gimli-weighted"
  env           = "cde"
  weight_dns    = var.cde_weight_dns
  weight_record = var.cde_weight_record_ext
  ttl           = ["10", "10", "10"]
}

module "prod-api-graphql-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-graphql"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["10", "10", "10", "10"]
}

module "prod-api-omni-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "api-omni"
  env           = "cde"
  weight_dns    = var.cde_weight_dns
  weight_record = var.cde_weight_v2_int
  ttl           = ["10", "10", "10"]
}

module "cde-omni-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "omni"
  env           = "cde"
  weight_dns    = var.cde_weight_dns
  weight_record = var.cde_weight_v2_int
  ttl           = ["60", "60", "60"]
}

module "cde-scrooge-temp-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "cde-scrooge-weighted"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["60", "60", "60", "60"]
}

module "cde-capital-los-public-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "capital-los-ext"
  env           = "cde"
  weight_dns    = var.cde_weight_dns
  weight_record = var.cde_weight_record_ext_v2
  ttl           = ["10", "10", "10"]
}

module "cde-asv-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "asv"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = ["cde-blue-int-v2.razorpay.com", "cde-green-int-v2.razorpay.com", "cde-white-int-v2.razorpay.com"]
  ttl           = ["60", "60", "60"]
}

module "cde-asv-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "asv-statuscake"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = ["cde-blue-concierge-v2.razorpay.com", "cde-green-concierge-v2.razorpay.com", "cde-white-concierge-v2.razorpay.com"]
  ttl           = ["60", "60", "60"]
}

module "cde-asv-grpc-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "asv-grpc"
  env           = "cde"
  weight_dns    = ["50", "50", "0"]
  weight_record = ["cde-green-int-v2-grpc.razorpay.com", "cde-blue-int-v2-grpc.razorpay.com", "cde-white-int-v2.razorpay.com"]
  ttl           = ["60", "60", "60"]
}

module "emv-3ds-server-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "emv-3ds-server"
  env           = "cde"
  weight_dns    = var.cde_emv_3ds_server
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "emv-3ds-server-concierge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "emv-3ds-server-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "emv-3ds-server-admin-concierge-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "emv-3ds-server-admin-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "100", "0"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "emv-3ds-server-admin-concierge-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "emv-3ds-server-admin-dark-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "emv-3ds-server-concierge-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "emv-3ds-server-dark-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["50", "50", "50", "50"]
}

module "emv-3ds-server-dark-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "emv-3ds-server-dark"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_pg_router_v1_v2_int
  ttl           = ["50", "50", "50", "50"]
}

module "cde-care-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate/"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "care"
  env           = "cde"
  weight_dns    = var.cde_weight_dns
  weight_record = var.cde_weight_record_ext_v2
  ttl           = ["60", "60", "60"]
}

module "cde-express-bank-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "express-bank"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["10", "10", "10", "10"]
}

module "cde-capital-lender-public-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "capital-lender-ext"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_noncde_weight_mix_v1_v2_ext

  #setid         = ["cde-blue-v2", "cde-green-v2", "prod-green-v2", "prod-white-v2"]
  ttl = ["10", "10", "10", "10"]
}

# INFRA-1515 : Daemonset CPU/MEM increase rejection webhook
module "validate-daemonset-webhook-cde-green" {
  source         = "../../modules/dns/"
  zone_id        = data.aws_route53_zone.com.id
  record_name    = ["validate-daemonset-webhook-cde-green"]
  record_type    = "CNAME"
  ttl            = "300"
  target_records = ["cde-green-int-v2.razorpay.com"]
}

# INFRA-1515 : Daemonset CPU/MEM increase rejection webhook
module "validate-daemonset-webhook-cde-blue" {
  source         = "../../modules/dns/"
  zone_id        = data.aws_route53_zone.com.id
  record_name    = ["validate-daemonset-webhook-cde-blue"]
  record_type    = "CNAME"
  ttl            = "300"
  target_records = ["cde-blue-int-v2.razorpay.com"]
}

# Rate limiter service
module "rate-limiter-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "rate-limiter-concierge"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "rate-limiter-int-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "rate-limiter-internal"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "rate-limiter-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "rate-limiter-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-whitelisted-poshvine-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-whitelisted-poshvine"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "cde-canry-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "cde-canary-test"
  env           = "cde"
  weight_dns    = ["0", "0", "45", "45", "10"]
  weight_record = var.cde_weight_mix_v1_v2_ext
  ttl           = ["10", "10", "10", "10", "10"]
}

module "mozart-dark-ext-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-dark-ext"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50", "0"]
  weight_record = var.cde_weight_mix_all_v1_v2_ext
  ttl           = ["60", "60", "60", "60", "60"]
}

module "payments-cross-border-live-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-cross-border-live"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "payments-cross-border-test-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-cross-border-test"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_int
  ttl           = ["60", "60", "60", "60"]
}

module "payments-cross-border-live-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "payments-cross-border-live-statuscake"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50"]
  weight_record = var.cde_weight_mix_v1_v2_concierge
  ttl           = ["60", "60", "60", "60"]
}

module "mozart-ext-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = data.aws_route53_zone.com.id
  record_name   = "mozart-ext"
  env           = "cde"
  weight_dns    = ["0", "0", "50", "50", "0"]
  weight_record = var.cde_weight_mix_all_v1_v2_ext
  ttl           = ["60", "60", "60", "60", "60"]
}

module "payments-card-present-weighted-internal" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = "${data.aws_route53_zone.com.id}"
  record_name   = "payments-card-present-int"
  env           = "cde"
  weight_dns    = "${var.cde_weight_dns_v2}"
  weight_record = "${var.cde_weight_v2_int}"
  ttl           = ["60", "60", "60", "60"]
}

module "payments-card-present-statuscake-weighted" {
  source        = "../../modules/weighted-dns-no-intermediate"
  zone_id       = "${data.aws_route53_zone.com.id}"
  record_name   = "payments-card-present-statuscake"
  env           = "cde"
  weight_dns    = "${var.cde_weight_dns_v2}"
  weight_record = "${var.cde_weight_record_concierge_v2}"
  ttl           = ["60", "60", "60", "60"]
}
