resource "aws_instance" "this" {
  ami                    = var.ami_id  #mandate
  instance_type          = var.instance_type    #mandate
  vpc_security_group_ids = var.sg_ids
  tags = var.tags #optional
}
