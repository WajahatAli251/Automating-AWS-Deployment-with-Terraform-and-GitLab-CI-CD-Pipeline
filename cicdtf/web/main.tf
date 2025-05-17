resource "aws_instance" "server" {
  ami           = "ami-0953476d60561c955"  # Updated AMI ID
  instance_type = "t2.micro"
  subnet_id     = var.sn     # Replace with actual Subnet ID
  security_groups = [var.sg]      # Replace with actual Security Group ID

  tags = {
    Name = "myserver"
  }
}
