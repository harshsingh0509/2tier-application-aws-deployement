resource "aws_instance" "app_server" {
  ami           = "ami-05576a079321f21f8"  # Your provided AMI ID
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "App Server"
  }
}
