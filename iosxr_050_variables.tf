locals {
  project_title       = "SP-B"
  project_description = "Topology created using Terraform to represent SP-X"

  routers = [
    {
      name = "pe01"
      host = "10.0.1.51"
    },
    {
      name = "pe02"
      host = "10.0.1.52"
    },
    {
      name = "p01"
      host = "10.0.1.53"
    },
    {
      name = "p02"
      host = "10.0.1.54"
    },
    {
      name = "p03"
      host = "10.0.1.55"
    },
    {
      name = "p04"
      host = "10.0.1.56"
    },
    {
      name = "pe03"
      host = "10.0.1.57"
    },
    {
      name = "pe04"
      host = "10.0.1.58"
    },
    {
      name = "asbr01"
      host = "10.0.1.59"
    },
    {
      name = "asbr02"
      host = "10.0.1.60"
    },
    {
      name = "rrpce01"
      host = "10.0.1.61"
    },
    {
      name = "rrpce02"
      host = "10.0.1.62"
    },
  ]

  xr_username = "admin"
  xr_password = "C!sco123"
}

variable "mpls_config" {
  type = map(any)
  default = {
    pe01 = {
      device    = "pe01"
      oam       = true
      router_id = "10.31.1.1"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        }

      ]
    },
    pe02 = {
      device    = "pe02"
      oam       = true
      router_id = "10.31.1.2"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        }

      ]
    },
    p01 = {
      device    = "p01"
      oam       = true
      router_id = "10.31.1.3"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        },
        {
          interface_name = "GigabitEthernet0/0/0/2",
        },
        {
          interface_name = "GigabitEthernet0/0/0/3",
        },
        {
          interface_name = "GigabitEthernet0/0/0/4",
        }
      ]
    },
    p02 = {
      device    = "p02"
      oam       = true
      router_id = "10.31.1.4"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        },
        {
          interface_name = "GigabitEthernet0/0/0/2",
        },
        {
          interface_name = "GigabitEthernet0/0/0/3",
        },
        {
          interface_name = "GigabitEthernet0/0/0/4",
        },
        {
          interface_name = "GigabitEthernet0/0/0/5",
        }
      ]
    },
    p03 = {
      device    = "p03"
      oam       = true
      router_id = "10.31.1.5"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        },
        {
          interface_name = "GigabitEthernet0/0/0/2",
        },
        {
          interface_name = "GigabitEthernet0/0/0/3",
        },
        {
          interface_name = "GigabitEthernet0/0/0/4",
        }
      ]
    },
    p04 = {
      device    = "p04"
      oam       = true
      router_id = "10.31.1.6"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        },
        {
          interface_name = "GigabitEthernet0/0/0/2",
        },
        {
          interface_name = "GigabitEthernet0/0/0/3",
        },
        {
          interface_name = "GigabitEthernet0/0/0/4",
        },
        {
          interface_name = "GigabitEthernet0/0/0/5",
        }
      ]
    },
    pe03 = {
      device    = "pe01"
      oam       = true
      router_id = "10.31.1.7"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        }

      ]
    },
    pe04 = {
      device    = "pe04"
      oam       = true
      router_id = "10.31.1.8"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        }

      ]
    },
    asbr01 = {
      device    = "asbr01"
      oam       = true
      router_id = "10.31.1.9"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        }

      ]
    },
    asbr02 = {
      device    = "asbr02"
      oam       = true
      router_id = "10.31.1.10"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },
        {
          interface_name = "GigabitEthernet0/0/0/1",
        },
        {
          interface_name = "GigabitEthernet0/0/0/10",
        }

      ]
    },
    rrpce01 = {
      device    = "rrpce01"
      oam       = true
      router_id = "10.31.1.11"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },

      ]
    },
    rrpce02 = {
      device    = "rrpce02"
      oam       = true
      router_id = "10.31.1.12"
      interfaces = [
        {
          interface_name = "GigabitEthernet0/0/0/0",
        },

      ]
    },
  }
}