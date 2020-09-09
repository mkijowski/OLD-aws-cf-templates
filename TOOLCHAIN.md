## Creating an AWS account
These CloudFormation templates assume the user has access to an AWS account.  If
you have an @wright.edu email address you can learn how to register for AWS and
get some free credits for AWS resources
[here.](https://engineering-computer-science.wright.edu/computer-science-and-engineering/amazon-web-services-aws)
You can register for an AWS account without using your @wright.edu email but if
you do NOT follow the above documentation you may incur charges on your credit
card...

## Necesassary tools
Using AWS resources requires a specific set of tools and knowledge of how to
configure them.  Below are some recommendations, they are not the only way to
connect to AWS resources, but are provided so stuents have a supported method of
gaining access.  If you are using something other than what is recommended we
may not be able to assist you with your configuration.

#### Accessing AWS resrouces from a Linux system
Good job, most of the work should already have been done for you.  There are
only three programs that you will need and two of them should be installed by
default.
* Use SSH to access both graphical and command line linux systems.  To access
  graphical linux applications be sure you use the `ssh -X` option to allow the
  remote graphical application to connect ot your local x server.  Both ssh and
  a X should be installed in most linux distributions by default.
* To connect to a Windows server you will need to install a remote desktop
  application on your linux system that supports NLA. I recommend freeRDP which
  is in the default Ubuntu repositories and can be installed with 
  `sudo apt install freerdp-x11`

#### Accessing AWS resources from a Windows system

