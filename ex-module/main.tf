module "ec2" {
  source = "./ec2"
  sg_id = module.sg.sg_id
  subnet = module.sub_net.subnet
}

module "sg" {
  source = "./sg"
}

module "sub_net" {
  source = "./subnet"
}