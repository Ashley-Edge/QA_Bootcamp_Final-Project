![QA Final DevOps Project - Team CodeVid](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/0412b57a001b10733813c3494d594a77/Header.png)

This project is the final 3rd project of our 3 month Bootcamp.  We started this project on a Monday morning (10 am) and will be presenting over Microsoft Teams on the following Friday. We have to work as a team to plan, design and implement a solution to deploy the supplied application. This challenge is to see what we can produce and how well we can apply the knowledge gained over the last 11 weeks, we can use any number of tools and frameworks available to us.

One of the main purposes of this project is for each of us to experience working within a team to complete a deliverable, this experience will be invaluable for our future potential employees.

## Contents
***
* [Planning](#Planning)
* [Risk assessment](#Risk_assessment)
* [CI Pipeline](#CI_Pipeline)
* [Team Members](#Team_Members)

## Planning
***

Planning is a large part of this project. We will be spending a large amount of time planning, researching and choosing the technologies we will be using to deploy this app.

We will be using this [Trello](https://trello.com/b/RNcvphoe/codevid-final-project) board to create a todo list, doing list and done list. This will help us assign jobs and keep everyone informed on what needs to be done, and what each member is up to.

## Risk assessment
***

This is our initial risk assessment from the start of our project.

![initial_risk_assessment](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/3d495ce0c66ed7fa52472331fbdaea6d/Initial_risk_assesment.png)

## CI/CD Pipeline
***

Below is our initial CI/CD Pipeline, we decided on at the begining of the project.

![Our Pipeline](https://trello-attachments.s3.amazonaws.com/605757e19c8c9e860a20a456/605865ea41150d72499a922d/92623ad4d78d7356357b905b20e2a75a/CI_CD_Pipeline.png)

While we were learning about Kubernetes and how to use it, we discovered that it can take up to 20 to initially start up a cluster. Below is our plan to cut done on that time. Part 1 will be initialised once and part 2 will run through Jenkins via a GitHub webhook.

Part 1 Terraform
1. Set up IAM roles and policies
2. Set up networking
3. Set up Kubernetes cluster
4. Set up RDS

Part 2 Jenkins Pull code from GitHub
1. Pull code from GitHub
2. Test code
3. Build images
4. Deploy images to the Kubernetes cluster
5. Rejoice :smile:


## Team Members
***

- [Derand Demaji](https://github.com/DerandStudent)
- [Ashley Edge](https://github.com/Ashley-Edge)
- [Mohammed Hallaq](https://github.com/mhallaq)
- [Julia Jablonska](https://github.com/stegojulia)
- [Mohammed Sayeed](https://github.com/abusyd1)


<!-- Requirements - Breakdown
Management:
•Daily Sprints —> stand-ups and Trello Board
•Decide what tools you will use for what purpose 
•design a CI/CD pipeline with the chosen tools
•consider how price will affect the CI/CD pipeline —> running costs
•Will it have multiple environment support
•How will you integrate web-hooks to work with GitHub?
•How will you implement testing?
•Decide on Cloud provider and software to be used
•Sprint Retrospective

Code:
•Use the tools practiced; Terraform, Ansible, Kubernetes...etc
•deploy Kubernetes Cluster in Cloud, using Terraform
•have all microservices contained using Docker
•Use configuration software to automate containerisation and deployment
•Use Deployment software develop a CI/CD pipeline including built, test and deploy stages
•Use Cloud provider

Documentation:
•Specification for the project
•Project Planning and Initial Management
•Risk Assessment
•CI/CD pipeline
•Cloud Infrastructure
•Project management final
•Sprint Retrospective

Presentation:
•What you did and why
•Demo of project
•Explanation for each CI/CD component
•Explanation for choices and price for real deployment in field
•Sprint Retrospective and Project management
•Additional Info -->