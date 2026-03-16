resource "aws_instance" "test_server" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-test"
  }
}