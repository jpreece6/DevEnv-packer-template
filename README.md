
Development Environment Template For Packer
=

A packer template to simplify the creation of a Windows development environment.

##Prerequisites
You will need the following tools to use the template:

1. [Packer](https://www.packer.io/docs/installation.html) installed with a minimum version of 0.12.0
2. [VirtualBox](http://www.virtualbox.org)

##Calling the template
Use `packer`to run the template

    packer build vbox-win10.json

##Template Details
This template generates a Windows box for development purposes.

#### Environment
* Windows 10 Enterprise (Evaluation Copy 90 Days)

#### Dev Tools
* .NET 2.0, 3.5, 4.0 & 4.5
* GIT for Windows
* Visual Studio 6.0 (SP 6) - *requires configuration of serial number*


##Configuring the template
See wiki.

* [Virtual machine configuration](wiki_page)
* [Dev tool configuration](wiki_page)
