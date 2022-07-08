resource "aws_internet_gateway" "vault-softhsm-gw" {
  vpc_id = aws_vpc.vault-softhsm-vpc.id
  tags = {
    Name = "${random_pet.name.id}-gw"
  }
}
