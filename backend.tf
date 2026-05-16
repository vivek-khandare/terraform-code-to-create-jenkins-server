terraform {
  backend "s3" {
    bucket = "young-minds-terraform-state"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}
