module "linode" {
  source           = "github.com/egee-irl/terraform-linode-instance.git"
  authorized_keys  = ["${chomp(file(var.pub_key))}"]
  authorized_users = ["egee"]
  type             = "g6-nanode-1"                                       # https://developers.linode.com/api/v4#operation/getLinodeTypes
  region           = "us-central"
  label            = "demo"
  image            = "linode/ubuntu18.04"
  stackscript_id   = "394412"
}

output "instance_ip" {
  value = "${module.linode.public_ip}"
}
