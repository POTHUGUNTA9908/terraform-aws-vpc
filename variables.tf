# variable "project_name" {
#     type = string 
# }

# variable "environment" {
#     type = string
#     default = "dev"
# }

# variable "common_tags" {
#     type = map
# }



# variable "vpc_cidr" {
#     type  = string
#     default = "10.0.0.0/16"
# }

# variable  "enable_dns_hostnames"{
#     type = bool
#     default = true
# }

# variable "vpc_tags" {
#     type = map
#     default = {}
# }

#  ##igw tags##
# variable "igw_tags"{
#     type = map
#     default = {}
# }






# #public subnets####

# variable "public_subnet_cidrs" {
#     type = list
#      validation {
#     condition     = length(var.public_subnet_cidrs) ==2
#     error_message = "please provide 2  valid public subnet cidr"
#   }
#     }


# variable "public_subnet_cidrs_tags" {
#     type = map 
#     default = {}
#     }

#     variable "private_subnet_cidrs" {
#     type = list
#      validation {
#     condition     = length(var.private_subnet_cidrs) ==2
#     error_message = "please provide 2  valid private subnet cidr"
#   }
#     }


# variable "private_subnet_cidrs_tags" {
#     type = map 
#     default = {}
#     }
    
#     variable "database_subnet_cidrs" {
#     type = list
#      validation {
#     condition     = length(var.database_subnet_cidrs) ==2
#     error_message = "please provide 2  valid database subnet cidr"
#   }
#     }


# variable "database_subnet_cidrs_tags" {
#     type = map 
#     default = {}
#     }


#     variable"database_subnet_group_tags"{
#         type = map 
#         default = {}
#     }
    

#     variable "nat_gateway_tags" {
#     type = map 
#     default = {}
#     }
    


#     variable "public_route_table_tags" {
#     type = map 
#     default = {}
#     }


#      variable "private_route_table_tags" {
#     type = map 
#     default = {}
#     }


#      variable "database_route_table_tags" {
#     type = map 
#     default = {}
#     }



#     ###peering####


#     variable "is_peering_required"{
#         type =bool 
#         default = false
#     }


#     variable "acceptor_vpc_id" {
#         type = string
#         default = ""
#     }


#     variable "peering_tags"{
#         type = map
#         default = {}
#     }




#### Project ####
variable "project_name"{
    type = string
}

variable "environment"{
    type = string
    default = "dev"
}

variable "common_tags"{
    type = map
}

#### VPC ####
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
    type = map
    default = {}
}

#### IGW ####
variable "igw_tags"{
    type = map
    default = {}
}

### Public Subnet ####
variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}


### Private Subnet ####
variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 valid private subnet CIDR"
    }
}

variable "private_subnet_cidr_tags" {
    type = map
    default = {}
}


### Database Subnet ####
variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide 2 valid database subnet CIDR"
    }
}

variable "database_subnet_cidr_tags" {
    type = map
    default = {}
}

variable "database_subnet_group_tags" {
    type = map
    default = {}
}

#### Nat gateway ####
variable "nat_gateway_tags" {
    type = map
    default = {}
}

#### Public Route table ####
variable "public_route_table_tags" {
    type = map
    default = {}
}

#### Private Route table ####
variable "private_route_table_tags" {
    type = map
    default = {}
}

#### Database Route table ####
variable "database_route_table_tags" {
    type = map
    default = {}
}

#### Peering ####
variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "peering_tags" {
  type = map
  default = {}
}

# variable "peering_tags" {
#   description = "Tags to apply to the VPC peering connection"
#   type        = map(string)
#   default     = {} # Optional, depending on whether you want it to be required or not
# }
