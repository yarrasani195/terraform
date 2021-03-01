resource "aws_instance" "webserver" {
  ami			      = "ami-03d315ad33b9d49c4"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name		      = "${var.key_name}"
  subnet_id                   = "${aws_subnet.subnet1-public.id}"
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true

  tags = {
	Name  = "Peristent-Demo"
	Evn   = "Dev"
	Owner = "Reddy"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
}

resource "aws_instance" "web" {
  ami               = "ami-03d315ad33b9d49c4"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "HelloPersistent"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 1
}