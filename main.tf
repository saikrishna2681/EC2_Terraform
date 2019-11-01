resource "aws_instance" "my-test-instance" {
  ami             = "ami-040c7ad0a93be494e"
  instance_type   = "t2.micro"

  tags {
    Name = "test-instance"
  }
}
