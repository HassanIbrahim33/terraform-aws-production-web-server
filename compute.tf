
resource "aws_instance" "web_server" {

  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  subnet_id                   = data.aws_subnets.default.ids[0]
  vpc_security_group_ids      = [aws_security_group.web_server_sg.id]
  associate_public_ip_address = true
  user_data                   = file("${path.module}/userdata.sh")
  user_data_replace_on_change = true

}


