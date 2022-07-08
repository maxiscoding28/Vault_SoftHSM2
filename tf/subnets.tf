resource "aws_subnet" "vault-softhsm-subnet" {
  cidr_block        = cidrsubnet(aws_vpc.vault-softhsm-vpc.cidr_block, 3, 1)
  vpc_id            = aws_vpc.vault-softhsm-vpc.id
  availability_zone = "eu-central-1a"
}

resource "aws_route_table" "vault-softhsm-rtb" {
  vpc_id = aws_vpc.vault-softhsm-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vault-softhsm-gw.id
  }
  tags = {
    Name = "${random_pet.name.id}-rtb"
  }
}
resource "aws_route_table_association" "subnet-association" {
  subnet_id      = aws_subnet.vault-softhsm-subnet.id
  route_table_id = aws_route_table.vault-softhsm-rtb.id
}

