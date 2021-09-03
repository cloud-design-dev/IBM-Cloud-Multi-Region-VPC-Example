# Multi-region IBM Cloud VPC Deployment

Use Terraform provider aliases to deploy the same environment across 2 IBM Cloud regions. 


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name for VPCs and associated resources. The names will be appended with the region for easier delineation. | `string` | n/a | yes |
| region1 | Name of the first region to deploy resources. [Regions](https://cloud.ibm.com/docs/vpc?topic=vpc-creating-a-vpc-in-a-different-region&interface=cli):  | `string` | n/a | yes |
| region2 | Name of the second region to deploy resources. | `string` | n/a | yes |
| resource\_group | Name of the Resource Group to assign to all deployed resources. | `string` | n/a | yes | 
| region1\_ssh\_key | Name of an existing SSH key in Region 2. | `string` | n/a | optional |
| region2\_ssh\_key | Name of an existing SSH key in Region 2. | `string` | n/a | optional |


## Outputs

| Name | Description |
|------|-------------|
| region1_vpc | ID information for Region 1 VPC and associated resources | 
| region2_vpc | ID information for Region 2 VPC and associated resources | 

