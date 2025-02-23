variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = true
    }
}

variable "domain_name" {
    default = "chandrakasa.online" 
}

variable "zone_id" {
    default = "Z06250211YH3VA6F7BBR2"
}