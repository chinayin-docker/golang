variable "version" {
  default = "1.25.14"
}
variable "minor" {
  default = "1.25"
}

group "default" {
  targets = ["v125-trixie", "v125-alpine", "v125-ci"]
}
