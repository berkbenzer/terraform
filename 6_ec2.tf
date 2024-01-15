resource "aws_instance" "ec2-control" {
  ami = "ami-0905a3c97561e0b69" ##ubuntu image
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [ aws_security_group.custom_sg.id]
  key_name = "terraform-keypair"

  tags = {
    "Name" = "ec2-control" 
  }
}

resource "aws_instance" "ec2-worker1" {
  ami = "ami-0905a3c97561e0b69" ##ubuntu image
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [ aws_security_group.custom_sg.id]
  key_name = "terraform-keypair"

  tags = {
    "Name" = "ec2-worker1" 
  }
}


resource "aws_instance" "ec2-worker2" {
  ami = "ami-0905a3c97561e0b69" ##ubuntu image
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [ aws_security_group.custom_sg.id]
  key_name = "terraform-keypair"

  tags = {
    "Name" = "ec2-worker2" 
  }
}