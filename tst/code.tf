resource "local_file" "mybest-pet" {
  filename = var.filename
  content = "my favorite pet is ${random_pet.my-pet.id} !!"
}

resource "random_pet" "my-pet" {
  prefix = var.prefix[1]
  separator = var.separator
  length = var.length
}

## we can store the output value by following method

output "pet-name" {
  value = random_pet.my-pet.id
  description = "this is optional arrgument"
}

## to print only output values we can use
#* terraform output *# -> it will print all output values
## terrform output pet-name 