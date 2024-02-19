resource "local_file" "lifeCycle_sample" {
  filename = "lifecycle/test.txt"
  content = "this is some examples"
  file_permission = "0777"

    ## this delete the resouce or file after creating it
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "lifeCycle_sample2" {
  filename = "lifecycle/test2.txt"
  content = "this is second examples"
  file_permission = "0777"
    ## it prevent the accedental deletes resources
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_instance" "webserver" {
  ami = "ami-eoeo"
  instance_type = "t2.micro"
  tags = {
    Name = "projectA-webserver"
  }

  lifecycle {
    ignore_changes = all 
    #ignore_changes = [ tags ]
  }
}