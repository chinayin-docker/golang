variable "version" {
  default = "1.27.3"
}
variable "minor" {
  default = "1.27"
}

group "default" {
  targets = ["v127-trixie", "v127-alpine", "v127-ci"]
}
