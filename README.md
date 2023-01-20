# VPC with Terraform [ IAC ], Ansible [ Resource Configuration ], and Digital Ocean [ Cloud Provider ]
## Structure
This repository is organized by remote resource type with a `main.tf` and `variables.tf` in the root. These root files are to define globally accessible variables and configure the required Terraform provider. 

The remaining structure is as follows:
> **ansible**
>> Main playbook and tasks to be included
>
> **compute**
>> Droplet / App instances to be provisioned
>
> **network**
>> VPC Management
>
> **storage**
>> Block storage instances to be provisioned 

## Hierarchy:
``` mermaid
        graph TD
            Balancer --> Service1 --> Service2
            Core --> Service3 & Service4 & Service5 & Service6 & Service7 & Service..
```
