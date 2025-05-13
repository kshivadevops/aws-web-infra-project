
# AWS Web Infrastructure Project

This project demonstrates how to set up a basic AWS web infrastructure using **Terraform**, **Ansible**, **Python**, and **Linux scripts**. It provisions an EC2 instance, installs Nginx, and deploys a Flask web application. It also integrates with monitoring, logging, and backup automation.

## Project Structure

The project is organized into several components:

- **Terraform:** Infrastructure provisioning
- **Ansible:** Configuration management and application deployment
- **Python scripts:** Monitoring, health checks, and database backups
- **Linux scripts:** Log rotation and cron job setup

aws-web-infra-project

1.terraform

 a. main.tf # Main Terraform configuration
 
 b. variables.tf # Variables for Terraform
 
 c. outputs.tf # Terraform outputs
 
 d. backend.tf # Backend configuration for Terraform state
 
2.ansible

 a.inventory.ini # Ansible inventory for EC2 instance
 
 b.playbook.yml # Ansible playbook to install and configure software
 
 c.roles
 
     a.nginx/tasks/main.yml # Install and configure Nginx
     
     b.flask/tasks/main.yml # Deploy Flask app
     
     
3.python-scripts

 a.log_monitor.py # Monitor Nginx access logs
 
 b.health_check.py # Health check for Flask app
 
 c.backup_db.py # Backup MySQL database to S3
 
 
4.linux-scripts

 a. rotate_logs.sh # Rotate Nginx logs
 
 b.cron_setup.sh # Set up cron jobs for regular tasks
 
5. README.md # Project documentation


## Setup Instructions

### Prerequisites

Before running the project, make sure you have the following installed:

- **Terraform**: For provisioning the infrastructure.
- **Ansible**: For configuration management and deployment.
- **Python 3**: For the health check and monitoring scripts.
- **AWS CLI**: For interacting with AWS services.

### Step 1: Configure AWS Credentials

Ensure your AWS credentials are set up locally. You can use AWS CLI to configure them:

```bash
aws configure
Step 2: Set Up Terraform
Go to the terraform/ directory.

Edit the variables.tf file to include your AWS credentials, VPC, subnet IDs, and other configuration values.

Initialize Terraform:


terraform init
Apply the Terraform plan to provision the infrastructure:

terraform apply
Terraform will create an EC2 instance and a security group, among other resources.

Step 3: Set Up Ansible
Go to the ansible/ directory.

Update the inventory.ini file with the public IP of the EC2 instance created by Terraform.

Run the Ansible playbook to install Nginx, the Flask app, and start the services:


ansible-playbook -i inventory.ini playbook.yml
Step 4: Python Script Automation
The Python scripts are designed for monitoring and backup purposes:

log_monitor.py: Monitors Nginx logs for errors. You can run this script manually or set it up as a cron job.

health_check.py: Checks the health of the Flask app. This can also be set as a cron job.

backup_db.py: Backs up the MySQL database and uploads it to AWS S3. Ensure the appropriate permissions are set up.

Step 5: Linux Scripts for Automation
rotate_logs.sh: Used to rotate the Nginx access logs. You can set this up to run periodically using cron.

cron_setup.sh: Sets up cron jobs for health checks and log rotation.

To set up the cron jobs, simply run the cron_setup.sh script:


bash linux-scripts/cron_setup.sh
Monitoring and Logging
The project integrates log monitoring using Python and Linux scripts.

It performs periodic health checks on the Flask application to ensure it is running.

Database backups are automated to AWS S3.

Conclusion
This project provides a complete solution for provisioning, configuring, and automating the deployment of a web application using AWS, Terraform, Ansible, Python, and Linux scripts. It can be used as a base for building more complex infrastructure projects with improved monitoring, automation, and scalability.

Feel free to contribute and enhance the project further!

License
This project is licensed under the MIT License - see the LICENSE file for details.

sql


### Steps to Add the `README.md` to Your Repository:

1. Create a file called `README.md` in the root of your project folder.
2. Copy and paste the above content into the `README.md` file.
3. Commit and push the changes to your GitHub repository:

   ```bash
   git add README.md
   git commit -m "Added README for the AWS Web Infrastructure project"
   git push origin master
