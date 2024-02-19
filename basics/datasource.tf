resource "local_file" "my-pet" {
    filename = var.filename
    content = data.local_file.dog.content
}

data "local_file" "dog" {
  filename = "/path/dog.txt"
}