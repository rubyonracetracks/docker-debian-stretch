# docker-debian-stretch
Welcome to my repository for using my 32-bit and 64-bit Docker images based on Debian Stretch.  These Docker images are stored on [Docker Hub](https://hub.docker.com/r/rubyonracetracks/).

## Incompatibility Warnings
* In the ideal case, your host machine's processor supports 64 bits AND full virtualization (which means meeting the VT-d standard).  In this case, use a 64-bit OS and a 64-bit Docker image.
* If your host machine's processor supports only 32 bits OR does not support full virtualization (VT-x or AMD-v), then you must use a 32-bit OS and a 32-bit Docker image in order to use tmux in the Docker container.

## Other Warnings
* When you start the Rails server from an app in your Docker container, enter the command "rails s -b 0.0.0.0". The "-b 0.0.0.0" is ESSENTIAL for viewing your app from the web browser on your host machine. If you simply enter "rails s" or "rails server", you will NOT be able to view your app from the web browser on your host machine.
* Viewing PostgreSQL data on the host machine with pgAdmin requires that the Docker container's PostgreSQL setup be configured to provide output to the IP address 0.0.0.0.  Docker images are preconfigured to take care of this.
* PostgreSQL and other servers are dormant until you or a script acts to start them.  Remember that because there is no virtual machine to boot up, no mechanism is provided to automatically turn on servers.
* PAY ATTENTION to the port numbers when you use your web browser or pgAdmin to view the Rails apps running on your Vagrant boxes. No two apps may share the same port number. As a result, the port number to use in your web browser will NOT always be 3000, and the port number to use in pgAdmin will NOT always be 5432 or 15432. The use of different port numbers for different Docker images allows you to work on multiple projects simultaneously.

## Prerequisites
* If you have not already done so, please install Git.
* If you have not already done so, please install Docker.  For 64-bit Docker, use Docker's official instructions.  For 32-bit Docker, follow the instructions at https://github.com/jhsu802701/docker-32bit-debian-stretch-install to install Docker.

### Editions available
* Minimal (min): This consists of the basic features provided by the debootstrap command plus Sudo, Nano, tmux, and a regular user named "winner".
* Developer (dev): This is the Minimal Editon plus Git, Heroku Toolbelt, Ansible, Chef, Puppet, NVM, Node, and rbenv.  This is a building block for the rbenv-* editions.
* General Rails (rails-general): This is a general purpose Docker image for using Ruby on Rails.
* General Jekyll (jekyll-general): This is a general purpose Docker image for using Jekyll.
* Jekyll for rubyonracetracks.com (jekyll-rubyonracetracks-com): This is a custom Docker image .

### Scripts For Using Images
* Just enter sh (script name), and then follow the instructions printed on the screen.
* For example, to get started with the 32-bit General Rails Docker image, enter the command "sh 32rails-general.sh".  To use the 64-bit General Rails Docker image, enter the command "sh rails-general.sh".

## Building Docker Images
* 32-bit: https://github.com/rubyonracetracks/docker-32bit-debian-stretch-build
* 64-bit: https://github.com/rubyonracetracks/docker-64bit-debian-stretch-build

## Customizing Docker images
https://github.com/rubyonracetracks/docker-debian-stretch-custom
