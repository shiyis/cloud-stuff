variable "main_region" {
  type    = string
  default = "us-east-1"
}
variable "vpcid" {
  type    = string
}
variable "rules" {
  type = list(object({
    port = number
    proto = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      port = 80
      proto = "tcp"
      cidr_blocks = [
        "0.0.0.0/0"]
    },
    {
      port = 22
      proto = "tcp"
      cidr_blocks = [
        "0.0.0.0/0"]
    },
    {
      port = 3689
      proto = "tcp"
      cidr_blocks = [
        "6.7.8.9/32"]
    }
  ]
}