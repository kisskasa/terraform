# ec2 variables
variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}

variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}
# sg variables
variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}


# r53 variables
variable "zone_id" {
    default = "Z06250211YH3VA6F7BBR2"
}

variable "domain_name" {
    default = "chandrakasa.online"
}