# VPC with Terraform [ IAC ] and Ansible [ Resource Configuration ]
_utilizing the digital ocean provider for provision VPC resources_

#### Resources:
 - Load Balancer
 - Authentication Service
 - Core Routing Service
 - Individual Compute Services
 - Individual Database Services

#### VPC Hierarchy:
``` mermaid
        graph TD
            LoadBalancer --> Auth --> Core
            Core --> Service1 & Service2 & Service3 & Service4 & Service5 & Service..
            Service1 --> Database1
            Service2 --> Database2
            Service3 --> Database3
            Service4 --> Database4
            Service5 --> Database5
            Service.. --> Database..
```
