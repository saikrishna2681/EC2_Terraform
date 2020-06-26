resource "aws_instance" "db" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "sai"
   subnet_id = "${aws_subnet.private_subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgdb.id}"]
   source_dest_check = false

  tags {
    Name = "database"
  }
}
