variable "my_default_value" {
  default = "CentOS 7"
}
variable "my_optional_variable" {
  default = ""
}


variable "application_secrets" {
	type = "string"
	default = "{}|:?><"
	}



variable "nlog_filelog_target_layout" {
	type = "string"
	default = "{longdate}|{level:uppercase=true}|{logger}|{message}|{exception:format=ToString,StackTrace}{newline}"
	}

variable "aws_secretsmanager_secret" {
  type = "map"

  default = {
    "function0" = {
      "URL" = "https://google.com"
      "ONE" = "TWO"
    },
    "function1" = {
      "URL"   = "https://yahoo.com"
      "THREE" = "FOUR"
    }
  }
  }



variable "application-secret" {
  type    = "list"
  default = ["function0", "function1"]
}

variable "function0_vars" {
  type = "map"

  default = {
    "URL" = "https://google.com"
    "ONE" = "TWO"
  }
}

variable "function1_vars" {
  type = "map"

  default = {
    "URL"   = "https://yahoo.com"
    "THREE" = "FOUR"
  }
}



variable "users" {
type = any
default = "raz"
 # default = null
}


variable "failover_replica_ip_configuration" {
  description = "The ip configuration for the failover replica instances."
  type = object ({
    authorized_networks = list(map(string))
    ipv4_enabled        = bool
    private_network     = string
    require_ssl         = bool
  })
  default = {
    authorized_networks = []
    ipv4_enabled        = true
    private_network     = null
    require_ssl         = false
  }
}

variable "win_ami" {
default = "ami-09f2114fecbe506e2"
}



variable "size_zize" {
default = "1"
}



variable "region" {
  type = string
  default = "us-east-1"
   }

variable "region_number" {
  # Arbitrary mapping of region name to number to use in
  # a VPC's CIDR prefix.
  default = {
    us-east-1      = 10
    us-west-1      = 2
    us-west-2      = 3
    eu-central-1   = 4
    ap-northeast-1 = 5
  }
}

variable "az_number" {
  # Assign a number to each AZ letter used in our configuration
  default = {
    a = 1
    b = 2
    c = 3
    d = 4
    e = 5
    f = 6
  }
}

variable "instance_type1" {
  type = string
  default = "m1.small"
}

variable "network" {
  type = string
  default = "vpc-596aa03e"
 }

variable "subnet" {
  type = string
default = "subnet-7e3fd71a"
  }

variable "associate_public_ip" {
  type    = bool
  default = true
}

variable "tags" {
  type = map
  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
    test-env-owner = "k.kotov"
  }
}

variable "docker_ports" {
  type = list(object
({
    use = bool
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      use = true
      internal = 8200
      external = 8300
      protocol = "tcp"
    }
  ]
}


variable "user" {
  type = tuple([string, number, bool])
  default = ["Kostya", "15", true]

}
