# Proxmox Home Lab
- proxmox and pve are the same thing
- proxmox is a VMWare like environment 

## Goals for this repo
1. build Proxox 8.0 or earlier server
2. set and match root user and password
3. set and match ip address of server

## This was already started up 
1. Proxmox (pve) and each of the values to start it up 
2. After this terraform runs 1 time successfully; apt update will work 
3. You will have 1 workinb VM after running 

## This Video & Future Videos 
1. These are some basics to setup a LAB on Proxmox; this is Video 1
2. Video will go over some more Terraform to setup a NGNIX K8s container 
3. Video will go over a revers proxy for a NGINX webpage 
4. Video will go your Internet Router and Opening Port 443 
5. Video will go over a blue green on two PODS on Web Facing and 1 internal
6. Video will go over watching blue external and breaking into green internal 
7. Video will show securing further a port open in your firewall

## Each of the files in this first Video 1 
| Secret | File                              | Function                          |
| :--:   | :-------------------------------- | :------------------------------   |
| N      | main.tf                           | main terraform configuraiton      |
| N      | providers.tf                      | enables terraform and proxmox     |
| N      | cloud-init.config                 | configuration for cloud-init      |
| N      | cloud-init.tf                     | tailor the target VM atrrbutes    |
| Y      | locals.tf                         | variables used in the confg       |
| N      | files/ceph.list                   | tailor pve server                 |
| N      | files/resolve.conf                | tailor pve server                 |
| N      | files/ubuntu_20_cloud_template.sh | tailor pve server                 |

