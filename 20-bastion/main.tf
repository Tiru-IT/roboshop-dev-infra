resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.bastion_sg_id]
  subnet_id = local.pub_ids
  iam_instance_profile = aws_iam_instance_profile.bastion.name
  user_data = file("bastion.sh")
  root_block_device {
    volume_size = 50
    volume_type = "gp3" # or gp2 dependas on your laptop
  }
  tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name}-bastion"
    }
  )
}

resource "aws_iam_instance_profile" "bastion" {
  name = "bastion"
  role = "BastionTerraformAdmin"
}