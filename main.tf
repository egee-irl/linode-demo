module "linode" {
  source           = "github.com/egee-irl/terraform-linode-instance.git"
  authorized_keys  = ["${chomp(file(var.pub_key))}"]
  authorized_users = ["egee"]
  type             = "g6-standard-6"
  region           = "us-central"
  label            = "primary"
  image            = "linode/ubuntu18.04"
}
