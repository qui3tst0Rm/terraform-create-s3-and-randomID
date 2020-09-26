#################################################################
#                         Variables                             #  
#################################################################
variable "region" {}

variable "project" {}

#################################################################
#                         locals                                #  
#################################################################
locals {
    env_name = lower(terraform.workspace)

    common_tags = {
      Project     = var.project
      Environment = local.env_name
    }

    s3_bucket_name_rand_id = "${local.common_tags.Project}-${random_id.bucket_id.dec}-bucket"
}


