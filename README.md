![QA Final DevOps Project - Team CodeVid](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/0412b57a001b10733813c3494d594a77/Header.png)

This project is the final 3rd project of our 3 month Bootcamp. We have to work as a team to plan, design and implement a solution to deploy the supplied application. This challenge is to see what we can produce and how well we can apply the knowledge gained over the last 11 weeks, we can use any number of tools and frameworks available to us. One of the main purposes of this project is for each of us to experience working within a team to complete a deliverable, this experience will be invaluable for our future potential employees.

### **Scope**

We will be working with these externally developed applications:
- https://github.com/spring-petclinic/spring-petclinic-angular
- https://github.com/spring-petclinic/spring-petclinic-rest

They are well-documented applications for the ‘Spring Pet Clinic’ domain, one of which serves as a front end client using AngularJS and the other as an API using Java. In short, we will be expected to deploy this application.

### **Requirements**

We will need to plan, design, implement a solution for automating the development of workflows and deployments of this application. As part of our final deliverable, we are required to discuss the project in a presentation and demonstrate these workflows on Friday. Using what we have learned during the past 11 weeks we will consider the following:

1. **Management:**
    - Daily Sprints —> stand-ups and Trello Board
    - Decide what tools to use for what purpose 
    - Design a CI/CD pipeline with the chosen tools
    - Consider how the price will affect the CI/CD pipeline —> running costs
    - Will it have multiple environment support?
    - How will we integrate webhooks to work with GitHub?
    - How will we implement testing?
2. **Code:**
    - Use the tools practised; Terraform, Ansible, Kubernetes...etc
    - Deploy Kubernetes Cluster in Cloud, using Terraform
    - Have all microservices contained using Docker
    - Use configuration software to automate containerisation and deployment
    - Use Deployment software to develop a CI/CD pipeline including built, test and deploy stages
    - Use a Cloud provider
<!-- 3. **Documentation:**
    - Specification for the project
    - Project Planning and Initial Management
    - Risk Assessment
    - CI/CD pipeline
    - Cloud Infrastructure
    - Project management final
    - Sprint Retrospective
4. **Presentation:**
    - What you did and why
    - Demo of the project
    - Explanation for each CI/CD component
    - Explanation for choices and price for real deployment in the field
    - Sprint Retrospective and Project management
    - Additional Info -->

***
## **Contents**
* [Planning](#Planning)
* [Risk assessment](#Risk_assessment)
* [CI Pipeline](#CI_Pipeline)
* [Terraform and Kubernetes](#Terraform_and_Kubernetes)
* [Jenkins](#Jenkins)
* [Docker](#Docker)
* [Costs](#Costs)
* [Team Members](#Team_Members)

***
## **Planning**

Planning is a large part of this project. We will be spending a large amount of time planning, researching and choosing the technologies we will be using to deploy this app. In the first part of this week-long project we spent planning and researching the technologies how we wanted to complete this project. We will be using this [Trello](https://trello.com/b/RNcvphoe/codevid-final-project) board to create a todo list, doing list and done list. This will help us assign jobs and keep everyone informed on what needs to be done, and what each member is up to. All week we will have run morning stand-ups. In these stand-ups, we will discuss any issues or ideas we have had since our last meeting. We will update the Trello board above to reflect any new tasks we will implement, update how far each task has progressed and assign new tasks to members when needed. We are also taking part in afternoon mini-meetings to touch base with each other and to make sure everyone is on the same thought process(no one will be left behind!)

This is our initial Trello board after our first day in the project. As you can see we have created quite a few tasks to do and have assigned them to members through tags.
![Initial Trello Board](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/aa78bcb586afb161fdf2ae47b8ea3a82/Initial_Trello_Board.png)


***
## **Risk assessment**

This is our initial risk assessment from the start of our project.

![initial_risk_assessment](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/3d495ce0c66ed7fa52472331fbdaea6d/Initial_risk_assesment.png)

***
## **CI/CD Pipeline**

Below is our initial CI/CD Pipeline, which we decided on at the beginning of the project.

![Our Pipeline](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/92623ad4d78d7356357b905b20e2a75a/CI_CD_Pipeline.png)

While we were learning about Kubernetes and how to use it, we discovered that it can take up to 20 min to initially start up a cluster. Below is our plan to cut down that time. Part 1 will be initialised once and part 2 will run through Jenkins via a GitHub webhook. We will talk more about each stage in depth further on in this document.

Part 1 Terraform
1. Set up IAM roles and policies (will do than on your AWS account directly)
2. Set up networking
3. Set up Kubernetes cluster
4. Set up RDS

Part 2 Jenkins Pull code from GitHub
1. Pull code from GitHub
2. Test code
3. Build images
4. Deploy images to the Kubernetes cluster
5. Rejoice :smile:

***
## **Terraform and Kubernetes**
 We will be using Terraform to set up networking, our Kubernetes cluster and our RDS database. This will only need to be done once. Once `terraform apply` had been executed and the cluster has successfully built with through kubernetes, all other updates can be handles by a Jenking/GitHub webhook.

First we created an IAM user that we will give policies and permissions to run our kubernetes.
![IAM Users](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/d32ec05c8a2623ce33ad029c56390e31/IAM_Users.png)

Below you will find all the policies and permissiions we granted to our kubernetes user.
![IAM Policies](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/d589c035a5ec44d036130527b41387ed/IAM_Policies_permissions.png)

This user's credentials will enable us to automate everything in out terraform and kubernetes files and folders. All credentials and sensative information (secret keys, passwords etc)will be protected and hidden with variables.tf files.

With terraform we set up networking.
![VPC](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/17e2ac118da3bfe3f7b062a04cad6d0c/VPC.png)

And our Kubernetes Cluster.
![Cluster](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/1c03d6de132cb5f6d160b282ac763add/Clusters.png)
Our cluster is made up of four EC2 instances.
![EC2's]()

***
## **Jenkins**

We will use Jenkins to build our CI/CD pipeline, by pulling the code from this GitHub Repo. We will then run the test code, build our images with Docker, and Deploy the Docker images to the Kubernetes cluster.

As you can see below, we had a successfully deployed our app after 11 builds. And looking further with the Jenkins console output, you can see we are issue also free.

![Jenkins pipeline and console](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/5c859459a33274a19817dc201aae5e4b/Jenkins.png)

We have five stages in our Jenkins pipeline

***
## **Docker**

Docker to containerise the application.

***
## **Costs**

We want to keep costs down to a minimum for this project, while still delivering a high-quality application.

***
## **Team Members**

- [Derand Demaj](https://github.com/DerandStudent)
- [Ashley Edge](https://github.com/Ashley-Edge)
- [Mohammed Hallaq](https://github.com/mhallaq)
- [Julia Jablonska](https://github.com/stegojulia)
- [Mohammed Sayeed](https://github.com/abusyd1)
