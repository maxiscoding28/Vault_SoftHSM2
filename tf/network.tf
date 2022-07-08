resource "aws_vpc" "vault-softhsm-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "${random_pet.name.id}-vpc"
  }
}

resource "aws_eip" "ip-vault-softhsm" {
  instance = aws_instance.vault-softhsm.id
  vpc      = true
}
