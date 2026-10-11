output "vpn_gateway_lookup_id" {
  description = "Map of id values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpn_gateway_lookup_amazon_side_asn" {
  description = "Map of amazon_side_asn values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.amazon_side_asn if v.amazon_side_asn != null && length(v.amazon_side_asn) > 0 }
}
output "vpn_gateway_lookup_arn" {
  description = "Map of arn values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "vpn_gateway_lookup_attached_vpc_id" {
  description = "Map of attached_vpc_id values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.attached_vpc_id if v.attached_vpc_id != null && length(v.attached_vpc_id) > 0 }
}
output "vpn_gateway_lookup_availability_zone" {
  description = "Map of availability_zone values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "vpn_gateway_lookup_filter" {
  description = "Map of filter values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "vpn_gateway_lookup_region" {
  description = "Map of region values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpn_gateway_lookup_state" {
  description = "Map of state values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "vpn_gateway_lookup_tags" {
  description = "Map of tags values across all vpn_gateway_lookup, keyed the same as var.vpn_gateway_lookup"
  value       = { for k, v in data.aws_vpn_gateway.vpn_gateway_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

