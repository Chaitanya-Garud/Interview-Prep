#!/usr/bin/env bash
set -euo pipefail

# Helpers
gitkeep_all() { find "$1" -type d -empty -exec sh -c 'for d; do : > "$d/.gitkeep"; done' _ {} +; }

# Top-level (strict numeric order)
mkdir -p 01_SDLC 02_Networking 03_Linux 04_Shell_Scripting 05_AWS 06_Azure 07_DevOps 08_Documents

# Files (zero-padded names)
printf "%s\n" "What is Waterfall Model?" \
               "What is Agile Model?" \
               "What is the difference between Waterfall and Agile Model?" \
  > 01_SDLC/01_SDLC_Questions.txt

printf "%s\n" "What is Waterfall Model?" \
               "What is Agile Methodology?" \
               "What is OSI Model?" \
               "What is TCP/IP Model?" \
               "What is Private IP?" \
               "What is Public IP?" \
  > 02_Networking/01_Networking_Questions.txt

# AWS (exact order)
mkdir -p \
"05_AWS/01_Basics_of_Cloud" \
"05_AWS/02_IAM" \
"05_AWS/03_EC2" \
"05_AWS/04_EBS" \
"05_AWS/05_S3" \
"05_AWS/06_EFS" \
"05_AWS/07_VPC" \
"05_AWS/08_ELB" \
"05_AWS/09_Route53" \
"05_AWS/10_RDS" \
"05_AWS/11_Aurora" \
"05_AWS/12_DynamoDB" \
"05_AWS/13_ElastiCache" \
"05_AWS/14_Redshift" \
"05_AWS/15_Backup" \
"05_AWS/16_KMS" \
"05_AWS/17_Secrets_Manager" \
"05_AWS/18_WAF" \
"05_AWS/19_Shield" \
"05_AWS/20_GuardDuty" \
"05_AWS/21_CloudTrail" \
"05_AWS/22_Systems_Manager_SSM" \
"05_AWS/23_Patch_Manager" \
"05_AWS/24_Inspector" \
"05_AWS/25_AutoScaling" \
"05_AWS/26_CloudFront" \
"05_AWS/27_CloudWatch" \
"05_AWS/28_SNS" \
"05_AWS/29_Lambda" \
"05_AWS/30_ECR" \
"05_AWS/31_EKS"

# Optional titles (plain files; safe on Windows)
create_title() { echo "$2" > "05_AWS/$1/01_TITLE.txt"; }
create_title "01_Basics_of_Cloud" "Basics of Cloud Computing"
create_title "02_IAM" "Identity and Access Management"
create_title "03_EC2" "Elastic Compute Cloud"
create_title "04_EBS" "Elastic Block Store"
create_title "05_S3" "Simple Storage Service"
create_title "06_EFS" "Elastic File System"
create_title "07_VPC" "Virtual Private Cloud"
create_title "08_ELB" "Elastic Load Balancing"
create_title "09_Route53" "Domain Name System (DNS) Service"
create_title "10_RDS" "Relational Database Service"
create_title "11_Aurora" "High-performance Relational Database Engine"
create_title "12_DynamoDB" "NoSQL Database Service"
create_title "13_ElastiCache" "In-memory Cache Service"
create_title "14_Redshift" "Data Warehousing Service"
create_title "15_Backup" "AWS Backup"
create_title "16_KMS" "Key Management Service"
create_title "17_Secrets_Manager" "Secure Credentials Management"
create_title "18_WAF" "Web Application Firewall"
create_title "19_Shield" "DDoS Protection"
create_title "20_GuardDuty" "Threat Detection Service"
create_title "21_CloudTrail" "Auditing and API Activity Logs"
create_title "22_Systems_Manager_SSM" "Central Management for Patching and Automation"
create_title "23_Patch_Manager" "Automated OS Patching (part of SSM)"
create_title "24_Inspector" "Vulnerability and Patch Scanning Service"
create_title "25_AutoScaling" "Automatically Adjust Compute Capacity"
create_title "26_CloudFront" "Content Delivery Network (CDN)"
create_title "27_CloudWatch" "Monitoring and Metrics Collection"
create_title "28_SNS" "Simple Notification Service (Alerts & Notifications)"
create_title "29_Lambda" "Serverless Compute Service"
create_title "30_ECR" "Elastic Container Registry"
create_title "31_EKS" "Elastic Kubernetes Service"

# DevOps (fixed order)
mkdir -p \
"07_DevOps/01_BASICS_OF_DEVOPS" \
"07_DevOps/02_GIT" \
"07_DevOps/03_JENKINS" \
"07_DevOps/04_MAVEN" \
"07_DevOps/05_SONARQUBE" \
"07_DevOps/06_TRIVY" \
"07_DevOps/07_CHECKMARX" \
"07_DevOps/08_OWASP" \
"07_DevOps/09_DOCKER" \
"07_DevOps/10_ANSIBLE" \
"07_DevOps/11_TERRAFORM" \
"07_DevOps/12_KUBERNETES" \
"07_DevOps/13_PROMETHEUS_AND_GRAFANA"

# Track empty dirs
gitkeep_all .

echo "✅ Setup complete (Windows-safe)."

