variable "version" {
  default = "1.26.1"
}
variable "minor" {
  default = "1.26"
}

group "default" {
  targets = ["v126-trixie", "v126-alpine", "v126-ci"]
}
