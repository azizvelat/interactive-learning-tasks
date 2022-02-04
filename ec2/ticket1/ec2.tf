resource "aws_instance" "web" {
  ami                         = "ami-ae6272b8"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  tags                        = local.task_tags
    provisioner "remote-exec" {
    connection {
      host        = aws_instance.web.public_ip
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
    }
    inline = [
      "sudo apt-get install apache2 -y",
    ]
  }
}
