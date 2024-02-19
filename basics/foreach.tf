resource "local_sensitive_file" "name" {
    filename = each.value    
    for_each = toset(var.users)
    content = var.content
}


## variable file

variable "users" {
    type = list(string)
    default = [ "/root/user10", "/root/user11", "/root/user12", "/root/user10"]
}
variable "content" {
    default = "password: S3cr3tP@ssw0rd"
  
}