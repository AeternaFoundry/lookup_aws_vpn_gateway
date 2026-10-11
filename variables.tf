variable "vpn_gateway_lookup" {
  description = <<EOT
Map of vpn_gateway_lookup, attributes below
Optional:
    - amazon_side_asn
    - attached_vpc_id
    - availability_zone
    - region
    - state
    - tags
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    amazon_side_asn   = optional(string)
    attached_vpc_id   = optional(string)
    availability_zone = optional(string)
    region            = optional(string)
    state             = optional(string)
    tags              = optional(map(string))
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

