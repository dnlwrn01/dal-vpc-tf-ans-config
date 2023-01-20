# VPC with Terraform [ IAC ], Ansible [ Resource Configuration ], and Digital Ocean [ Cloud Provider ]
This is a virtual private cloud configuration for the Digital Ocean Cloud Platform built with Terraform.

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

## DAL VPC:
``` mermaid
        graph TD
            LoadBalancer --> Auth --> Core
            Core --> Service1 & Service2 & Service3 & Service4 & Service5 & Service..
```
