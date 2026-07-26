
output "instance_id" {
    description = "The ID of the EC2 instance"
    value       = aws_instance.web_server.id

}

output "public_ip" {
    description = "The public IP address of the EC2 instance"
    value       = aws_instance.web_server.public_ip
}

output "website_url" {
    description = "The URL of the web server"
    value       = "http://${aws_instance.web_server.public_ip}"
}