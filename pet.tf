resource "local_file" "pet" {
  filename = "sample.txt"
  content  = "this is sample file"
}

resource "random_pet" "my-pet" {
  prefix    = "Mrs"
  separator = "."
  length    = "2"
}