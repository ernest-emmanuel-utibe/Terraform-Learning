# Learning HCl with 3RN3ST


# Block
# A block is a container for other content
# Blocks are defined by their type and enclosed in curly braces {}.
block_type {
    attribute1 = value1
    attribute2 = value2
}

# Here is a terraform coed to create an instance
resource "aws_instance" "example" {
    ami = "ami-0c94855ba95c71c99"
    instance_type = "t2.micro"
    count = 1
    enabled = true
}

# Attributes
# Attributes are 'key' 'value' and 'pair'


# Datatypes
"string"
number 2
boolean = true or false

# List is always defined in square brackets
List
list = ["item1, items2, items3"]

# Example 
security_groups = ["sg-837dyweou", "sg-yryyeiweiuyr"]
subnets_groups = ["84848347", "84eyw763943"]


Maps
variable "example_map" {
    type = map
    default = { key1 = "value1", key2 = "value2", key3 = "value3"}
}

locals {
    my_map = { "name" = "John Doe", "age" = 30, "is_admin" = true}
}
age_of_john = locals.my_map["age"]

# Conditions 
resource "aws_instance" "server" {
    # To define the environment you want to deploy or use, do this
    instance_type = var.environment == "development" ? "t2.micro" : "t2.small"
}

# Function = Can help you perform calculations, manipulate data and validate endpoints
locals = {
    name = "Mike Tyson"
    fruits = ["Bananas", "Apples", "Pineapple"]
    message = "Hello ${upper(local.name)}! I know you like{$(join("," local.fruit ))}"
}

# Resource Dependency