resource "aws_subnet" "main" {
  cidr_blocks = ["0.0.0.0/0"]

  tags = {
    Name = "Main"
  }
}

output "subnet" {
  value = aws_subnet.main.id
}