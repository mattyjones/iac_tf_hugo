
# variable "pub_key" {
#   type = "string"
#   default = ""
# }

# variable "pvt_key" {
#   type = "string"
#   default = ""
# }

# variable "ssh_fingerprint" {
#   type = "string"
#   default = ""
# }

variable "do_token" {
  type = "string"
}

variable "pub_key" {
  type = "string"
  default = "/Users/mjones/.ssh/id_do.pub"
}

# variable "pvt_key" {
#   type = "string"
#   default = "/Users/mjones/.ssh/id_do"
#   # default = "${file("/Users/mjones/.ssh/id_do")}"
# }

variable "ssh_fingerprint" {
  type = "string"
  default = "1d:1c:6c:bf:87:ae:1b:20:d3:d1:57:4d:7c:5c:5f:7d"
}
