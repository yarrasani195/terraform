provider "aws" {
  access_key = "AKIAZVTKDJO7FIYMH6MP"
  secret_key = "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"
  region     = "us-east-1"
}

resource "random_password" "password" {
  length           = 8
  min_lower        = 1
  min_upper        = 1
  number           = true
  special          = true
  override_special = "!#()-[]<>"
}

output "random" {

value =["${random_password.password.result}"] 
}