
resource "aws_security_group" "web_server_sg" {
  name        = "${var.project_name}-sg"
  description = "Security group for web server"
  vpc_id      = data.aws_vpc.default.id


  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_http_cidr
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

