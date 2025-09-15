policy "s3-block-public-access-account-level" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/FSBP-Policy-Set-for-AWS-Terraform/1.1.1/policy/s3-block-public-access-account-level.sentinel?checksum=sha256:926655b71b10a9845b5f231835667cfb570fa772f1ec087b1e48dc83c9738954"
  enforcement_level = "advisory"
}

module "tfresources" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/FSBP-Policy-Set-for-AWS-Terraform/1.1.1/policy-module/tfresources.sentinel?checksum=sha256:ae40fe0173a1d6203c5c062045432d46beb6397a769d65189d1ec80228ef2161"
}

module "tfplan-functions" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/FSBP-Policy-Set-for-AWS-Terraform/1.1.1/policy-module/tfplan-functions.sentinel?checksum=sha256:e7f04948ec53d7c01ff26829c1ef7079fb072ed5074483f94dd3d00ae5bb67b3"
}

module "tfconfig-functions" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/FSBP-Policy-Set-for-AWS-Terraform/1.1.1/policy-module/tfconfig-functions.sentinel?checksum=sha256:ee1c5baf3c2f6b032ea348ce38f0a93d54b6e5337bade1386fffb185e2599b5b"
}

module "report" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/FSBP-Policy-Set-for-AWS-Terraform/1.1.1/policy-module/report.sentinel?checksum=sha256:1f414f31c2d6f7e4c3f61b2bc7c25079ea9d5dd985d865c01ce9470152fa696d"
}

