# to import any module
module "myDevModule" {
    # if the module folder is in current directory the put ./ 
    source = "./modules/ec2"
    # have to define own value if is not set in the variables file
    mytype = "t2.micro"

    # for using the  varibale from different module variable file.
    mytype = "${module.myvpc.cidr}"
}