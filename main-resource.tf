resource "aws_instance" "web" {
  #  ami           = "ami-061ac2e015473fbe2"  #Amazon Linux 2
  ami           = data.aws_ami.sbd_ami.id
  instance_type = "t2.micro"
  # key_name      = "terraform-kp"

  tags = {
    Name = "HelloSBD"
  }

  provisioner "local-exec" {
    command = "echo The server's hostname is ${self.private_ip}"
  }
}