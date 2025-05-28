 



 vpc
  internetgateway
  inter and vpc attachment
  2 public subnets
  2 private subnets
  2 database subnets
  eip
  nat gateway
  public route table 
  private route table 
  database route table 
  route tablle association
  routes in all tables 
  perring if required for if  required  for users
 routes of peering in requestor and acceptor 
database subnet group




###inputs####
project_name(required ): user should mention their project name 
environment (optional): default value is dev . type is string 
vpc_cidr(optional): default valve is 10.0.0.0/16
enable _dns_hostname(optional): default valve is true. type is bool.
vpc_tags(optional): default valve is empty . type is map
igw_tags(optional): default valve is empty . type is map
public_subnet_cidrs(required): user has  to 2 provide subnet cidr
private_subnet_cidrs(required): user has  to 2 provide subnet cidr
database_subnet_cidrs(required): user has  to 2 provide subnet cidr
is_peering_required(optional):: default valve is empty . type is map
acceptor_vpc_id:: default valve is empty . type is map
vpc_peering_tags:: default valve is empty . type is map