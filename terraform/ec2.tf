resource "aws_instance" "node_example" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.small"

  iam_instance_profile = aws_iam_instance_profile.app_web_server.name
  key_name = "deployer"
}
