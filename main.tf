
resource "local_file" "bar" {
  content  = "This is my first file"
  filename = "./MyFiles/file1.txt"
}

resource "local_file" "bar1" {
  content  = "This is my second file"
  filename = "./MyFiles/file2.txt"
}

resource "local_file" "foo" {
  content  = "Hello"
  filename = "file1.txt"
}
resource "local_file" "foo1" {
  content  = var.var_content
  filename = var.var_filename
}
#use of locals and random_id
resource "local_file" "foo2" {
  content  = local.content_for_files
  filename = "${random_id.bar.hex}"
}
resource "local_file" "foo3" {
  content  = var.practice_number
  filename = var.var_filename
}

resource "local_file" "foo4" {
  content  = var.practice_list[1]
  filename = var.practice_list[0]
}

resource "local_file" "foo5" {
  content  = "Hello"
  filename = var.practice_list[3]
}

resource "local_file" "fileNew" {
  content  = var.practice_map["content"]
  filename = var.practice_map["filename"]
}

resource "local_file" "file_Obj" {
  content = var.practice_object["content_file"]
  filename = var.practice_object["file_name"]
}


resource "random_id" "bar" {
  byte_length = 8
}

locals {
  content_for_files="Hello Guys from batch 7"
}

