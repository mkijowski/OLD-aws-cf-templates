# AWS Instructions - Making Connections...

### Introduction to the Amazon Web Services (AWS) lab space
The purpose of this document is to familiarize yourself with the lab space we will be
using for this course.  You should have received an email from `support@awseducate.com`
regarding your AWS Educate account for this class.  We will be using AWS to
create virtual environments for you to use in your assignments.

### Objectives
1. Complete the AWS Educate Registration
2. Sign in to the AWS console via AWS Educate
3. Create a SSH keypair in AWS
4. Create a test environment via AWS CloudFormation link
5. Install required software and make a connection to the AWS environment

---

### Complete the AWS Educate Registration
Note: this step is for first time students using AWS Educate only, returning students can
skip it and Faculty need to register elsewhere.  Again, this is **not** for faculty members.

Using the link emailed to you from `support@awseducate.com`, register for an 
AWS Educate account as a student of Wright State University.  Please **be sure to 
enter a graduation date in the future**, if you are unsure of your expected graduation 
date just enter a date 5 years from today.

The last field in this registration is a **Promotional Code** field, ***NOT*** a zip 
code.  Many browser autofill programs will enter your zip code here and will cause an error.  Leave this field blank.

Confirm your account via email and sign in here: https://www.awseducate.com/signin/SiteLogin

---

### Sign in to the AWS Console via AWS Educate
Assuming you have registered for AWS Educate and have access to this class 
perform the following:

* [Sign in to AWS educate](https://www.awseducate.com/signin/SiteLogin)
  * Click the yellow `My Classrooms` Button
  * Click the blue `Go to classroom` button for whichever class you would like to connect to
  * Click the blue `AWS Console` button  
  
  This will launch the AWS console (may require two
  clicks if you were already signed in to AWS with your personal account)
  
  Your username in the top right should look something like this
  `vocstartsoft/user236529=lastname.number@wright.edu`.

---

### Create a SSH keypair in AWS
You should be at the main AWS Console for your course.  If not follow the steps in the previous section.
Before you can create any resources in AWS you will first need an SSH key pair to secure them and sign in
once provisioned.

* To create a SSH key pair via AWS for signing in to your systems
  select the [EC2 service from the AWS console](https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#Home:).
  In the center area you should see a list of all Resources you have
  available (you will be returning here often).  Right now they should all be 0.
* Click on [0 Key Pairs](https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:sort=keyName)
  From here you should see no existing SSH key pairs.  
* Click on the `Create Key Pair` blue button.  This will create a 
  public/private key pair, stores the public key in AWS, and downloads the
  private key to your local machine.  
* **Do not lose this private key.**  Doing so will prevent you from being
  able to access any labs created with it.  If you do lose it simply delete it
  from AWS and create a new one.

---

### Create a test environment via AWS CloudFormation link
Once you have created your SSH key you are able to provision any of the resources
provided via Cloud Formation links.  A Cloud Formation link is a template that describes
a set of resources that will be created in your AWS account.  Cloud Formation links will 
open in another AWS service called Cloud Formation (AWS CF).

Make sure you are signed into the AWS Console (via AWS Educate), then perform the following:
* Click on the Cloud Formation link provided to you for your course or assignment (if you are just testing use [this link](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=Ubuntu-template&templateURL=https:%2F%2Fwsu-cecs-cf-templates.s3.us-east-2.amazonaws.com%2Ftemplates%2FUbuntu.yml))
* select the SSH key you just created from the drop down menu
* Enter a CIDR formatted IP address for extra security (or keep the default of `0.0.0.0/0`)
* Accept the rest of the defaults (keep clicking next/agree/create) to finalize creation of your lab space.

Most resources should provision in approximately 5 minutes (Windows systems can take > 30 minutes).
Once you have created the AWS Cloud formation stack you can [return to the EC2 service](https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#Home:).
  Here you should see additional resources have been created. 
* [Click on Running Instances](https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#Instances:sort=instanceState)
  to see information about the servers created as a part of the cloud formation
  template.  You will need to retrieve the Elastic IP of the Ubuntu instance by
  selecting it and looking at the information in the Description below.

---

###### Install required software for Windows
We are going to be making many connections to Linux servers via SSH, some will
even have graphical applications that we will be accessing locally.  To do this
you will need an SSH client and local X server.  There are many options out
there and you are free to use whichever one you want; however, we will only be
supporting the following environment (which I would recommend trying out, if you
have a better suggestion send it to Matt Kijowski).

* [Install Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
* Install Ubuntu 20.04 LTS from the Windows store
* Launch Ubuntu 20.04 LTS Bash to finish configuring your account
  (username/password)
* [Install MobaXterm Home Edition](https://mobaxterm.mobatek.net/download.html)

---

### Connecting to the AWS environment
**You are now ready to make an SSH connection to your AWS server.**  Using
MobaXterm perform the following actions:
* Create/copy the AWS private SSH key to your home directory
* Make the key only readable by your user (`chmod 600 /path/to/private/key`)
* Obtain the username for the system from the instructions provided to you alongside the CF link (if you used the link provided in this document, the username is `ubuntu`)
* SSH into your AWS server with the following (replace */path/to/private/key*
  and *ElasticIP* with your information):
  `ssh -i /path/to/private/key username@ElasticIP`
