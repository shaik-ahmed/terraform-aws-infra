resource "aws_vpc" "prodvpc" {
  cidr_block       = var.cidr_block

  tags = {
    Name = "prodvpc"
  }
}

resource "aws_subnet" "publicsubnet-a" {
  vpc_id     = aws_vpc.prodvpc.id
  cidr_block = var.publicsubnetcidr_a_block

  tags = {
    Name = "publicsubnet-a"
  }
}