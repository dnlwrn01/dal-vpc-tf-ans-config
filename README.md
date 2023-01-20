### VPC with Terraform [ IAC ], Ansible [ Resource Configuration ], and Digital Ocean [ Cloud Provider ]

---

#### Ansible
- main playbook file to run on the remote
- tasks that are included in main

#### Compute
- Compute services initalization and configuration with remote exec
- variables for compute

#### Network
- VPC Management
- Load Balancer
- variables for network

#### Storage
- Database initalization 

---

### DAL VPC:
``` mermaid
        graph TD
            LoadBalancer --> Auth --> Core
            Core --> Service1 & Service2 & Service3 & Service4 & Service5 & Service..
```
