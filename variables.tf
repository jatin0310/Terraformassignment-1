variable "var_filename"{
  type = string
  description = "Enter file name" 
  default ="myfile.txt"
}

variable  "var_content"{
  type = string
  description = "Enter Content"
  default = "Hey Guys How are you"
}

variable "var_def" {
  type=string
  default="myfile.text"  
}

variable "practice_number"{
    type = number
}

variable "practice_list"{
    type= list(string)
}



variable "practice_map"{
    type = map(string)
}

variable "practice_object"{
  type=object({
    file_name=string,
    content_file=string
  }
  )

}
