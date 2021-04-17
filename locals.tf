locals {
  public_image_map = {
    filemage-ibm-1-5-12 = {
      "au-syd"   = "r026-70896c4a-b383-423d-91e0-b6324f85c673"
      "eu-de"    = "r010-ed8684fc-cfef-4671-a5d0-949a15c86204"
      "eu-gb"    = "r018-e43d45c7-1429-41f0-a802-b774c5dcbc5b"
      "jp-osa"   = "r034-0ece10a4-e536-4579-b541-d1cbff39668a"
      "jp-tok"   = "r022-023eecc5-a748-4210-af53-504115ddd396"
      "us-east"  = "r014-5e5df6f4-e5af-406b-b183-2ac82ab91910"
      "us-south" = "r006-28c45bc6-e306-4112-98bb-45f4ec11ea16"
    }
  }

  public_image_id = lookup(local.public_image_map[var.public_image_name], var.region)

  # If custom image was not found use public image.
  image_id = data.ibm_is_image.custom_image.id == null ? local.public_image_id : data.ibm_is_image.custom_image.id
}
