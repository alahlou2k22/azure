locals {
  image_id         = "/subscriptions/3ff78315-7d97-418e-bced-34d5cafc104a/resourceGroups/rg-bel-n-packerImageGallery/providers/Microsoft.Compute/galleries/packerGallery_build/images/windows-2019-bel/versions/latest"
  location         = "francecentral"
  application_name = "<%=customOptions.application_name%>"
  sub_ids = {
    "SUB-BEL-P-FR-OFFICE"   = {"id"="066dd702-eebe-4671-bc9c-591f817424f6","env"="p"},
    "SUB-BEL-P-FR-IDENTITY" = {"id"="ce56335d-83d1-4c72-ad6e-f34036cde7db","env"="p"},
    "SUB-BEL-Q-FR-OFFICE"   = {"id"="88830407-11da-4ddd-ba0d-b8112eb2f4d0","env"="q"},
    "SUB-BEL-D-FR-OFFICE"   = {"id"="3ff78315-7d97-418e-bced-34d5cafc104a","env"="d"},
    "BEL-SUB-INTEGRATION"   = {"id"="16510f2e-121f-4ab3-b9b6-57fe30c3faa1","env"="i"},
    "BEL-SUB-HUB"           = {"id"="8ddc2a2a-1272-463f-b5e1-310694a1f46f","env"="p"},
    "SUB-BEL-Q-FR-IDENTITY" = {"id"="2ffbc25e-40ef-478d-ae2a-15164aaf5164","env"="q"},
    "SUB-BEL-D-FR-IDENTITY" = {"id"="6cb0511a-68c1-46fd-8e7e-b3df23d957d1","env"="d"},
    "SUB-BEL-Q-FR-NETWORK"  = {"id"="07de234d-ab36-40f3-b874-d7fcde63d407","env"="q"}
  }
  rg_vnet = {
    "vnet-bel-p-fr-office"="rg-prd-frc-prod",
    "vnet-bel-q-fr-office"="rg-ppr-frc-preprod",
    "vnet-bel-d-fr-office"="rg-dev-frc-dev-poc",
    "vnet-bel-d-fr-office"="rg-dev-frc-dev-poc",
    "vnet-bel-p-fr-identity"="rg-bel-p-identity-network-001",
    "vnet-bel-q-fr-identity"="rg-bel-q-identity-network-001",
    "vnet-bel-d-fr-identity"="rg-bel-d-identity-network-001",
    "vnet-bel-r-identity-network"="rg-bel-r-identity-network",
    "vnet-bel-q-fr-network"="rg-bel-q-fr-network"
  }
  cloud           = "<%=customOptions.parsedCloud%>"
  vnet_name = "<%=customOptions.parsedNetworks%>"
  snet_name = "<%=customOptions.subnet%>"
  subscription_id = local.sub_ids[local.cloud]["id"]
  env_letter      = local.sub_ids[local.cloud]["env"]
  rg_network = local.rg_vnet[local.vnet_name]
}
