## type of different Variable Types

# 1. String  => the string may contain alphaNumaric 

    variable "filename" {
        default = "/file_path/pet.txt"
        type = string
        description = "the path of local file 5."
    }
    variable "content" {
        default = "I love pet"
        type = string
        description = "this is content of the file!!"
    }

# 2. number
        variable "length" {
            default = 3
            type = number
            description = "length of string or pet name"
        }

# 3. bool
        ## ex: true / false
        variable "password_check" {
            default = true
            type = bool
        }

##   4. any --> if you not mention file time in variable block , it will take "any" as default

# 5. list  => we call it as number collection because we refer them indexs like 0,1,2
        ## ex: ["cat", "dog"]
        variable "prefix" {
            default = ["Mrs", "Mr", "sir"]
            type = list
        }
        # we call above list values in main.tf follows like below
        resource "random_pet" "my-pet" {
          prefix = var.prefix[0] # here we refer the variable prefix value => Mrs
        }

    ## we can mix list type with string or number type
        variable "list_str" {
          default = ["thx","tx","tq"]
          type = list(string)
        }
        
        variable "list_num" {
            default = [10, 11, 12]
            type = list(number)
        }
    ## SET is very similar to list - but SET not allowed duplicate values


# 6. map 
    ## It represents the Key Value pairs
        variable file-content {
          type = map
          default = {
            "myfirst_key" = "this is my first value"
            "mySecond_key" = "this is my second value"
          }
        }
        
        resource "local_file" "my-pet" {
          filename = var.filename
          content = var.file-content["myfirst_key"]
        }

    
# 7. object
        variable "Venky" {
          type = object({
            name = string
            color = string
            age = number
            food = list(string)
            status = bool 
          })

          ## we can use variable block like above ex:
          default = {
            name = "Venkatesh P"
            color = "Black"
            age = 30
            food = [ "fish", "prawn" ]
            status = true
          }
        }


## tuple and list type are same but tuple we can use the mix variable types string, number , bool
# 8. tuple

variable "family" {
  type = tuple([ string, number, bool ])
  default = [ "value", 0, false ]
}



