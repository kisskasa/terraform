resource "aws_instance" "expense" {
    for_each = var.instance_names 
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-07a9ee59fdaf1fb47"]
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }        
    )
}