# kaideals
Flash deals for restaurants / fast food web app


## Getting started

Before we start developing we will need to set up a few things




### 1. terminal
You will need to have a bash command line to run many of the developer tools we use in the project.
- Mac - macOS comes preInstalled with the 'Terminal' application
- windows - Please download and install Cygwin - this a bash terminal very the same as used on Mac and Linux
    - download cygwin [here](https://www.cygwin.com/) - 
    - install the .exe
    - during the install process search for and add 'git' & 'make' to the packages
- Linux - 

##### Resources for terminal
   
 Youtube vids
 - [For mac users (and Windows if you use Cygwin) ](https://www.youtube.com/watch?v=jDINUSK7rXE)
 
 

### 2. docker

To start developing you will need to [install docker ](https://docs.docker.com/engine/installation/)



#### 2.X docker i'snt working

If you on cannot install docker please follow the 'No Docker' development instructions



### 3. Node

Install the relevant version of node js for your operating system [here](https://nodejs.org/en/download/)

This will install npm and node.



### 4. Git
Now we have to install the git version control system, the 'git' in github.

type 
```git``` in the terminal, if it says ```command not found``` then you need to install it.

- mac -  in terminal type ``` xcode-select --install```
- windows cygwin - 



### 5. Clone the Repo
Now we are ready to download the project files to our local computer.
This is called cloning a repository, or to clone a repo.

- open your terminal 
- navigate to where you want to download the project to.
- type: ```git clone https://github.com/codeforprojects/kaideals.git```

This will this download the repo locally and turn it into a git repository, which allows to track all the changes you make.

- now you can go ino the project dir
- ```cd kaideals```

### Optional - SSH
So that you dont have to enter your password everytime when you use git, you can add a ssh key. A secure way to identify your computer to github.

[github tutorial for creating / adding a ssh key](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)



## Start up the App
Hopefully everything has been set up. 

- open your terminal
- navigate project folder kaideals
- type ```make install```
    - this npm installs all the dependencies for the project
- ```make start```


- type ```docker ps``` to see the app running in its container
- go to [http://localhost:8000](http://localhost:8000)


### No Docker?


You can run the Webpack dev server. Go to ~/containers/app/src/public and type:

```bash
npm start
```

Make sure you have npm or yarn installed

[http://localhost:8000/](http://localhost:8000/)




### waffle.io
Managing and tracking project progress

# Product

## Web app

## Mobile App - iOS / Android / React Native


# Tech Stack

## Front-End
- React.js
- Redux

## Back-End
- NodeJS

## DB
- postgres / mongodb database


# Team
Coding Tuesdays at Code For Projects meetup
