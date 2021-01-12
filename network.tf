##############################################################################
# Create an  ACL for ingress/egress used by all subnets in VPC
##############################################################################

resource "ibm_is_network_acl" "multizone_acl" {
  name = "${var.unique_id}-multizone-acl"
  vpc  = ibm_is_vpc.vpc.id
  rules {
    name        = "egress"
    action      = "allow"
    source      = "0.0.0.0/0"
    destination = "0.0.0.0/0"
    direction   = "outbound"
  }
  rules {
    name        = "ingress"
    action      = "allow"
    source      = "0.0.0.0/0"
    destination = "0.0.0.0/0"
    direction   = "inbound"
  }
}

##############################################################################
