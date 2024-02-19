terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }
  }

}


## to check logs

## export TF_LOG=TRACE

## export TF_LOG_PATH = /tmp/terraform.log

## terraform import <resource_type>.<resource_name> <attribute>