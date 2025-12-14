variable "version" {
  default = "1.25.5"
}
variable "minor" {
  default = "1.25"
}

group "default" {
  #targets = ["v125-trixie", "v125-alpine", "v125-ci"]
  targets = ["v125-trixie"]
}
