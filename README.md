# FileMage Gateway Instance Creation using Catalog image

This directory contains a Terraform module to create an FileMage Gateway instances using catalog input from the user.

## Prerequisites

- Have access to [Gen 2 VPC](https://cloud.ibm.com/vpc-ext/).
- Have at least one subnet

The following regions are supported:

- us-south
- us-east
- eu-de
- eu-gb
- jp-tok
- jp-osa
- au-syd

### Required values

| Key | Definition | Example |
| --- | ---------- | ------------- |
| `region` | The VPC region that you want your virtual server instance to be provisioned in. | us-south |
| `ssh_key_name` | The name of the SSH key to be used. See [Public SSH Key Doc](https://cloud.ibm.com/docs/vpc-on-classic-vsi?topic=vpc-on-classic-vsi-ssh-keys). | linux-ssh-key |
| `subnet_id` | The ID of the subnet you want the virtual server instance to be provisioned in. | 0717-xxxxxx-xxxx-xxxxx-8110-xxxxx |
| `vsi_instance_name` | The name of the virtual server instance to be provisioned. | filemage-vm |
| `vsi_profile` | The profile of compute CPU and memory resources to be used when provisioning. | cx2-4x8 |
| `vsi_security_group` | The name of the security group to be provisioned. | filemage-sg |
| `public_image_name` | The name of image to be provisioned. | filemage-ibm-1-5-13 |

### Optional values

| Key | Definition | Value Example |
| --- | ---------- | ------------- |
| `custom_image_name` | Use a custom image instead of the provided public images. | custom-filemage-image |
