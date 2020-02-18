provider "aws" {
        region = "us-east-1"
}

#creating security group for ssh and http
resource "aws_security_group" "test" {
                name = "test"
                description = "allow ssh and http traffic"

                ingress {
                                from_port = 22
                                to_port = 22
                                protocol = "tcp"
                                cidr_blocks = [""]
                }

                ingress {
                                from_port = 80
                                to_port = 80
                                protocol = "tcp"
                                cidr_blocks = [""]
                }

                egress {
                                from_port = 0
                                to_port = 0
                                protocol = "-1"
                                cidr_blocks = [""]
                }

}

#creating ec2 instance with http installtion through user data

resource "aws_instance" "****" {
        ami = "ami-0ff8a91507f77f867"
        instance_type = "t2.micro"
        availability_zone = "us-east-1a"
        security_groups = ["${aws_security_group.****.name}"]
        key_name = ".pem"
        user_data = <<-EOF
                #! /bin/bash
                sudo yum install httpd -y
                sudo systemctl start httpd
                sudo systemctl enable httpd
                echo "<h1>Automation for the People<br>webservertest</h1>" >> /var/www/html/index.html
        EOF

        tags = {
                Name = "webserver"
        }
}
