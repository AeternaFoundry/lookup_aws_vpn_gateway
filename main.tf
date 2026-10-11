data "aws_vpn_gateway" "vpn_gateway_lookup" {
  for_each = var.vpn_gateway_lookup

  amazon_side_asn   = each.value.amazon_side_asn
  attached_vpc_id   = each.value.attached_vpc_id
  availability_zone = each.value.availability_zone
  region            = each.value.region
  state             = each.value.state
  tags              = each.value.tags

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

