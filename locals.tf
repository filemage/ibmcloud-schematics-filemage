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
    filemage-ibm-1-5-13 = {
      "au-syd"   = "r026-b5f79c59-d2fe-4432-9630-2404afd99a6c"
      "eu-de"    = "r010-ede2495d-436a-4e31-b460-b6702750bc2a"
      "eu-gb"    = "r018-26f4a579-8a31-4a1d-9663-382144a2182d"
      "jp-osa"   = "r034-1ab48de9-b502-4fa1-9aa5-73a5ceaa04f1"
      "jp-tok"   = "r022-b639f72a-bf99-4445-9203-53fe5a7f81e2"
      "us-east"  = "r014-77f09fb0-14d0-4364-8677-5ff0e545c6e5"
      "us-south" = "r006-15f99ca6-1187-45c0-a2cb-90a33ee2dcc0"
    }
    filemage-ibm-1-9-2 = {
      "au-syd"   = "r026-0800f180-7b1d-46e5-ad5c-d53f00366cfa"
      "eu-de"    = "r010-eaf7d557-307f-461d-92ce-addbda4b6ff3"
      "eu-gb"    = "r018-f6fb3128-dcdc-4bda-9f00-ba50185b3245"
      "jp-osa"   = "r034-d84b1905-3aee-49f3-b97e-268395be8b33"
      "jp-tok"   = "r022-65ca5ee8-1cb3-41c7-b4cd-36e7c7011050"
      "us-east"  = "r014-264e6ad6-56dc-4e90-835e-247bbb56352f"
      "us-south" = "r006-8c0367c3-e530-4273-a946-82213a8f7941"
    }
  }

  public_image_id = lookup(local.public_image_map[var.public_image_name], var.region)

  # If custom image was not found use public image.
  image_id = data.ibm_is_image.custom_image.id == null ? local.public_image_id : data.ibm_is_image.custom_image.id
}
