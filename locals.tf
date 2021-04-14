locals {
  public_image_map = {
    filemage-ibm-1-5-13 = {
      "au-syd" = "r026-58e10faf-ef70-4b46-9372-9e1d82b14237"
      "eu-de" = "r010-81f3f0d0-1643-4e79-a4fb-e3c7473a32b3"
      "eu-gb" = "r018-53708df0-739e-40ae-93d8-0a3809a2fe09"
      "jp-osa" = "r034-eb4d46b6-3160-4311-ba91-3ed4656b8dc4"
      "jp-tok" = "r022-d08a6d71-d151-41c8-be8e-ebba6879e236"
      "us-east" = "r014-cf0cd75a-e2e9-4558-8180-adcabd05d9a5"
      "us-south" = "r006-3ff803bd-2fc9-4643-bf82-180e6785d1fd"
    }
  }

  public_image_id = lookup(local.public_image_map[var.public_image_name], var.region)

  # If custom image was not found use public image.
  image_id = data.ibm_is_image.custom_image.id == null ? local.public_image_id : data.ibm_is_image.custom_image.id
}
