# Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Project Plan

* A link to a Trello board for the project  [here](https://trello.com/b/76QnbNWj/azureclouddevops-project2)
* A link to a spreadsheet that includes the original and final project plan  [here](https://github.com/thanhbao0390/azure-devops-p2/blob/main/screenshort/project-management.xlsx)

## Instructions

* Architectural Diagram 
![alt text](https://github.com/thanhbao0390/azure-devops-p2/blob/main/screenshort/architecture_diagram.drawio.png)

Instructions for running the Python project are all listed in the order of execution.

1. Create a Github repository
2. Launch Azure Cloud Shell environment by clicking on the first icon located next to the Azure search bar (the bar is on the top of Azure page) 
3. In Cloud Shell enter command **_ssh-keygen_**. This creates public rsa key located on path _~/.ssh_.
4. Copy public key from id_rsa.pub file and go to your Github repository
5. Under repository settings select _Deploy keys_ and add your copied public key
6. In Cloud Shell you can now clone your repository 
7. Enter your repository in Cloud Shell by entering 
8. Create project scaffolding. You can use this repository as it contains for running the project
9. Enter the commands **_python3 -m venv ~/.myrepo_** and **_source ~/.myrepo/bin/activate_**
10. Run make all command and wait for it to finish. (***Passing tests that are displayed after running the `make all` command from the `Makefile`** - [screenshot](https://github.com/thanhbao0390/azure-devops-p2/blob/main/screenshort/LocalTest.png))
11. In your current location in directory execute **_./commands.sh_**
12. In a new Azure Cloud Shell terminal run the following command **_az webapp log tail_** to view the current logs of our web application
13. Go to Azure Devops page and select _New project_ on the organization page
14. Give the project a name and select _Create_. This will create a new project in your organization page
15. From the new project page, select _Project settings_ from the left sidebar navigation add go to _Pipelines_
16. Under _Service connections_, select _New service connection_ and then continue with the setup of c8onnection between Azure DevOps and Pipelines
17. Now that those services are connected, return to _Pipelines_ sidebar and select _Create Pipeline_
18. After that select _GitHub_ as your platform for hosting source code and enter your login data for _GitHub_
19. Select your github repository that you created for this project 
20. On the next tab _Configure your pipeline screen_ select _Python to Linux Web App on Azure_ and finish by clicking on _Save and run_
21. Following this click on _Approve and install_. _Azure Pipelines_ will now run for the first time and it will update the deployed project application

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


