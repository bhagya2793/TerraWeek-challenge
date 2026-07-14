resource "random_pet" "name" {

  length = 2

}


resource "local_file" "greeting" {

  filename = "greeting.txt"

  content = "Hello ${random_pet.name.id}, Welcome to TerraWeek Challenge!"

}
