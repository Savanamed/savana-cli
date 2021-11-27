Quick Installation Guide for Linux

For the installation phase we will need to have root access to the system.
Login as normal user and create a new directory which contains the software and the files to be transfered:

$ mkdir savava

$ cd savana

Use cURL or wget depending on which utility is installed in your linux. Normally cURL is installed by default in RHEL and derivatives distros (RHEL, Centos, Fedora) and wget in debian derivative ones (Debian, Ubuntu,etc)

In case that you have wget:

$ wget -O savana wget -O savana https://raw.githubusercontent.com/Savanamed/savana-cli/main/savana

In case the you have curl installed:

$ curl -o savana wget -O savana https://raw.githubusercontent.com/Savanamed/savana-cli/main/savana

In case that you do not have zip installed (i.e. RHEL distros is not initially installed):

$ sudo yum install -y zip

Once we have the file downloaded, proceed with the installation:

$ unzip awscliv2.zip
$ sudo ./aws/install
$ chmod +x savana
$ ./savana install

During this process you will be asked the root password to execute the installation.

Once installed go to the Use Guide section for further processes.


Quick Installation Guide for Windows

For the installation phase we will need to have access as Administrator to the system.
Open powershell script as Administrator and create a new directory to contain the software and the files to be transfered:

PS C:\> mkdir savana
PS C:\> cd sanava

Download the power script file savana.ps1:

PS C:\>  Invoke-WebRequest -Uri wget -O savana https://raw.githubusercontent.com/Savanamed/savana-cli/main/savana.ps1 -OutFile savana.ps1

Execute the install process and follow all the questions requested in screen:

PS C:\>  ./savana.ps1 install

Restart a new powershell in other for the environment to be recharged:

PS C:\> powershell

Once ready you can continue in the User Guide section below.


**Notes:

In case of some errors the following command could be useful:

If protocol errors in the download: 

 PS C:\> [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Depending on the version and restriction configuration:

 PS C:\> set-executionpolicy remotesigned



User Guide for any system (Windows or Linux)

Next step is to enter the credentials. Savana has provided you with 2 keys: Access KEY and Secret KEY which are going to be needed in this step. Enter them as follows:

 ./savana configure
Access KEY: XXXXXXXXXXX
Secret KEY: YYYYYYYYYYYY

Inside the directory savana, it has been created: upload and download subdirectories.

Move the files and directory structure that you want to be uploaded to Savana inside the directory upload. Once ready initiate the synchronization of the files with Savana:

./savana sync

If Savana has left some files for download, they will now be in the download directory.

To show which files are in the Savana repository execute:

./savana ls

For any help about the commands:

./savana help


