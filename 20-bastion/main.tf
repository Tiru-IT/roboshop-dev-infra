resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.sg_id]
  subnet_id = local.pub_ids
  iam_instance_profile = aws_iam_instance_profile.bastion.name
  user_data = file("bastion.sh")

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