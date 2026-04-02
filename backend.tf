##############
# S3 Backend #
##############

terraform {
  backend "s3" {
    bucket       = "linztfbackend"
    key          = "jenkins-new-vpc-statefile.tfstate"
    use_lockfile = true
    region       = "eu-west-2"
  }
}