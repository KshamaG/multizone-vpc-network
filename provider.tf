##############################################################################
# IBM Cloud Provider
# > This block needs to be here to use in schematics
##############################################################################

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.ibm_region
  generation       = var.generation
  ibmcloud_timeout = 60
}

##############################################################################

##############################################################################
# Resource Group
##############################################################################

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

##############################################################################
