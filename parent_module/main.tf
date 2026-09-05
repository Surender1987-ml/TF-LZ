module "rgs" {
  source = "../child_module/az_rg"
  rgs    = var.rgs

}

module "vnets" {
  depends_on = [module.rgs]
  source     = "../child_module/az_vnet"
  vnets      = var.vnets

}

module "snets" {
  depends_on = [module.vnets]
  source     = "../child_module/az_snet"
  snets      = var.snets

}

module "pips" {
  depends_on = [module.snets]
  source     = "../child_module/az_pip"
  pips       = var.pips

}

module "nic" {
  depends_on = [ module.snets,module.pips ]
  source = "../child_module/az_nic"
  vm = var.vm
  
}
