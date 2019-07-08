# terraform-linode-example

[![Youtube](https://img.shields.io/badge/Egee-Youtube-e62117.svg)](https://www.youtube.com/c/Egeeirl)
![Twitter Follow](https://img.shields.io/twitter/follow/egee_irl.svg?style=social)

Get your Linode API key/token from the Linode cloud manager and export it as an environment variable:

`export LINODE_TOKEN="really_long_string_of_jumbled_numbers_and_letters"`

**Never** hardcode your API keys into your Terraform files.

[Install Terraform](https://www.terraform.io/downloads.html) and from the root of this repo, run:

`terraform init`
and then
`terraform plan`
if all looks good, run
`terraform apply`

After minute or two, you should have a working Linode instance that you can log into!

When you are finished with this demo, you can tear it all down by running:

`terraform destory`
