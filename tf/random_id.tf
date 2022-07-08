resource "random_pet" "name" {
  length    = 1
  separator = "-"
  prefix    = "vault-softhsm"
}

output "name" {
  value = random_pet.name.id
}
