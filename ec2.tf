resource "aws_instance" "ec2-1" {
  ami                    = "ami-0b6d9d3d33ba97d99"
  instance_type          = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.s3_access.name
  subnet_id              = aws_subnet.public_sub.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  key_name               = "3-KEY-3-TIER"
  associate_public_ip_address = true
  user_data              = file("userdata.sh")

  tags = {
    Name = var.instnace_name
  }
}

resource "aws_instance" "ec2-2" {
  ami                    = "ami-0b6d9d3d33ba97d99"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_sub2.id
  iam_instance_profile = aws_iam_instance_profile.s3_access.name
  vpc_security_group_ids = [aws_security_group.my_sg.id]  
  key_name               = "3-KEY-3-TIER"
  associate_public_ip_address = true   
  user_data              = file("userdata1.sh")

  tags = {
    Name = var.instnace_name2
  }
}
