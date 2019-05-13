using module ".\Ressource.psm1"
using module ".\Computer.psm1"


$pc = [Computer]::new(1, "Fujitsu")
$pc