provider "AWS"{
   region  = "ap-south-1" 
   
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 2
     ami     =  "ami-05c8ca4485f8b138a"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-17"]
     key_name        = "eyuvankumar.pem"
     tags = {
        Name = "tomcatservers"
     }
}

