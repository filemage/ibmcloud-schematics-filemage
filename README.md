# FileMage Gateway Instance Creation using Catalog image

FileMage Gateway is an FTP and SFTP server backed by IBM Cloud Object Storage. File transfers are streamed in-memory without writing to disk and changes are visible in real-time. Additional features include permission management and automatic TLS certificate management using Let's Encrypt.

This directory contains the Terraform module to create FileMage Gateway instances using catalog input from the user.

Use this template to create FileMage Gateway instances using catalog image from your IBM Cloud account in IBM Cloud [VPC Gen2](https://cloud.ibm.com/vpc-ext/overview) by using Terraform or IBM Cloud Schematics.  Schematics uses Terraform as the infrastructure-as-code engine.  With this template, you can create and manage infrastructure as a single unit as follows. For more information about how to use this template, see the IBM Cloud [Schematics documentation](https://cloud.ibm.com/docs/schematics).

See the [IBM Quickstart Guide](https://www.filemage.io/docs/ibm-quickstart.html) for detailed instructions on how to deploy and access your instance.

## Accessing the instance.

The following ports are used by default.

|Description|Ports|
|-----------|----:|
|OS SSH|22|
|Web Portal|80, 443|
|SFTP|2222|
|FTP Command|21|
|FTP Passive|32768-60999|

Note: The default username for the image *ubuntu*, and the default SFTP port is *2222*.

## Before you begin

Before you can apply the template in IBM Cloud, complete the following steps.

Ensure that you have the following permissions in IBM Cloud Identity and Access Management:
* `Manager` service access role for IBM Cloud Schematics
* `Operator` platform role for VPC Infrastructure


## Required resources

Ensure the following resources exist in your VPC Gen 2 environment.
* VPC
* SSH Key
* VPC with at least one subnet

## Installing the software

### The Virtual Server Instance Image

The FileMage Gateway image name can reference the name of a custom image in your region or the public images available on IBM cloud.

The FileMage Gateway images available on IBM Cloud are:

* filemage-ibm-1-5-13

They are supported in the following regions:

* us-south
* us-east
* eu-de
* eu-gb
* jp-tok
* jp-osa
* au-syd

### Additional Inputs

You will need to provide the name of SSH key and the ID of the subnet in which to place the virtual server instance. You will also need to provide a descriptive name for the VSI and it's associated security group. You may also optionally select to create and attach a floating public IP to the VSI.

## Upgrading to a new version

When an update is available, you will be notified on the settings page. To update, SSH to your virtual server instance and run `filemage update`.

## Getting support

This product is provided and supported by [FileMage](https://www.filemage.io/). If you encounter any issues that require opening a support case email us at [support@filemage.io](mailto:support@filemage.io). FileMage support is provided in English, during the hours 7am - 7pm Pacific time, Monday through Friday.

### Support site URL

https://www.filemage.io/support/

### Support Location. 
 
United States
