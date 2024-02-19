
variable "users" {
  type = list(object({
    name = string
    location = string 
  }))
  default = [ {
    location = "India"
    name = "venkat"
  },
  {
    location = "US"
    name = "John"
  },
  {
    location = "UK"
    name = "Michel"
  } ]
}

## for expression
output "names" {
  value = [for user in var.var.users: user.name]
}

## Splat expressions 
output "splatName" {
  value = var.users[*].name
}


#both outputs are same