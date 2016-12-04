
Windows Development Environment Template For Packer
=

A packer template to simplify the creation of a Windows development environment.

##Prerequisites
You will need the following tools to use the template:

1. [Packer](https://www.packer.io/docs/installation.html) installed with a minimum version of 0.12.0
2. [VirtualBox](http://www.virtualbox.org)

##Calling the template
Use `packer`to run the template
    
    // Provides communication through winrm (warning: file upload is very slow)
    packer build vbox-win10.json
    
    or
    
    // Provides communication through ssh (using OpenSSH)
    packer build vbox-win10-ssh.json

##Template Details
This template generates a Windows box for development purposes.

#### Environment
* Windows 10 Enterprise (Evaluation Copy 90 Days)

#### Dev Tools
* .NET 2.0, 3.5, 4.0 & 4.5
* GIT for Windows
* psake
* Visual Studio 6.0 (SP6) - *requires additional files (see [wiki page](https://github.com/looterwar/DevEnv-packer-template/wiki/Visual-Studio-(SP6)-Configuration))


##Configuring the template
See wiki.

* [Virtual machine configuration](https://github.com/looterwar/DevEnv-packer-template/wiki/Virtual-machine-configuration)
* [Dev tool configuration](https://github.com/looterwar/DevEnv-packer-template/wiki/Dev-tool-configuration)
