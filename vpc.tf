resource "aws_vpc" "autovpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "autovpc"
  }
}
resource "aws_subnet" "autopubsub" {
  vpc_id     = "${aws_vpc.autovpc.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "autopubsub"
  }
}