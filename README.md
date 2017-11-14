# kaideals [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://reactjs.org/docs/how-to-contribute.html#your-first-pull-request)


Flash deals for restaurants / fast food web app. 
We dream of helping people discover the hidden gems of their city. 

User can go to the web site or mobile app, and see deal happening right now near me. 
Kai deals should know the cheapest food in your neighbourhood. 

Helping restaurant owners to get rid of excess food and avoid waste. 


 
<br/>

## START HERE:


Depending on where you are at in you coding journey you should start here. 
Below are some quick steps /tutorials to get you familiar with the workflow for contributing to the project. 

The end goal is you making a pull request on github. 


<b>First</b> lets start by cloning the repo

```
$ git clone https://github.com/codeforprojects/kaideals.git 

$ cd kaideals
```


If you are unfamiliar with <b>Git</b> checkout the [git section](#git) 

You will need to have [Node](#node) and [Docker](#docker) installed to get started. 

Now you can [Start up the app](#startup)

### React / Frontend

If you would like to get involved in the React side of the project please make your first contribution here: 
React newbie  - coming soon 

###  Node / Backend
If you choose to follow the node side of the project make sure you check out the 

- [Express ](https://github.com/codeforprojects/kaideals/blob/master/ExpressPrimer.md)

<br/>


<a name="git"></a>

#### Git
If are unfamiliar with git start here [Git ](https://github.com/codeforprojects/kaideals/blob/master/Git%20Newbie%20Instructions.md)


- open your terminal 
- navigate to where you want to download the project to.
- type: ```git clone https://github.com/codeforprojects/kaideals.git```

This will this download the repo locally and turn it into a git repository, which allows to track all the changes you make.

- now you can go ino the project dir
- ```cd kaideals```


<a name="setup"></a>

#### Dependencies 

Before we start developing we will need to set up a few things

Note on support: were are only able to support Linux and Mac OS natively due to buld system overhead. If you are on <b>[Windows](#vm)</b> skip to [vm section](#vm)

Otherwise for Mac and Linux:

#### 1. terminal
You will need to have a [bash command line](https://www.youtube.com/watch?v=jDINUSK7rXE) to run all of the developer tools we use in the project.
 
 
<a name="docker"></a>
#### 2. docker

To start developing you will need to [install docker ](https://docs.docker.com/engine/installation/)


<a name="node"></a>
#### 3. Node

Install the relevant version of node js for your operating system [here](https://nodejs.org/en/download/)

This will install npm and node.


<br/>



## Getting started
<br/>

##### ```make install```

Run this first to install the npm depedencies used by the project

##### ``` make start```

with everything has been set up. 

- open your terminal
- navigate project folder kaideals
- type ```make install```
    - this npm installs all the dependencies for the project
- ```make start```


```
## To see the running docker containers type:
$ docker ps 

CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                     NAMES
999f9910cd34        mdillon/postgis     "docker-entrypoint.sh"   37 seconds ago      Up 33 seconds       0.0.0.0:58008->5432/tcp   postgres
726977c0fd05        kaideals_app        "pm2 start processes."   37 seconds ago      Up 34 seconds       0.0.0.0:8000->5000/tcp    app
```

Our code is running inside of [docker](https://devopscube.com/what-is-docker/) containers. You can poke around in the containers with

```
$ docker exec -it app /bin/sh
/var/www/app # 
```  

you are now inside the tiny operating system of the docker container
'app' being the name of the container you want to explore


##### App!
- go to [http://localhost:8000](http://localhost:8000) in your browser to see the app running

##### ```make refresh```

When you have made changes to the code, type ```make refresh``` to rebundle the React js code and copy any code changes into the docker containers.
This also restarts the Node js process.

Long story short - if makes changes make sure you type make refresh to see them.

##### ```make clobber```
To clean up the project environment.
This command shuts down the docker containers, removes them and deletes the docker images. as well as uninstalling the npm dependencies.

Handy if your not sure whats going wrong. Burn it all


PS. for more information on these commands checkout the makefile file in the project folder.
There you will see what each of the make commands does.


### Virtual Machine for Windows

If you are on windows you will need to download this Virtual Machine image - [Download](https://s3-ap-southeast-2.amazonaws.com/codeforprojects/kai.ova)

1. first download [Virtual box](https://www.virtualbox.org/wiki/Downloads)
2. then VM [image](https://s3-ap-southeast-2.amazonaws.com/codeforprojects/kai.ova)
3. Finally import the image into Virtual Box and run it - [instructions](https://docs.oracle.com/cd/E26217_01/E26796/html/qs-import-vm.html)
4. open terminal and start project

 ```
 $ cd ~/code/kaideals
 $ make install
 $ make start
 ```
 
 

##### Optional - SSH
So that you dont have to enter your password everytime when you use git, you can add a ssh key. A secure way to identify your computer to github.

[github tutorial for creating / adding a ssh key](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

<br/>
<br/>

### [Project management](https://github.com/codeforprojects/kaideals/projects) 

Managing and tracking project progress:

We are using github projects to manage the project.
Go 




### Project structure

coming soon....



## Team
[Code For Projects meetup](https://www.meetup.com/houseofcode/)

Join the slack channel [here](https://join.slack.com/t/codeforprojects/shared_invite/enQtMjY4MTc3NTkxNDQ2LTU3MjU2NTVmNTVlODk1YmY1ZjFhZTdlYzQzMzU0Yjg1ZGIyZDAxYzI3YjVlZTJhMWE1MGIzYjNkYWE2NDAxMDg)