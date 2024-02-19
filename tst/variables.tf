variable "filename" {
  type = string
  default = "gen/my-pet.txt"
}

variable "prefix" {
  type = list(string)
  default = [ "Mr", "Mrs", "its" ]
}

variable "separator" {
  default = "."
}

variable "length" {
  type = number
  default = 1
}