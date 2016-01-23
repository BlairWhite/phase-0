##1.1 Think About Time Reflection
I focused my learning on the idea of a "growth mindset" and creating positive habits. These concepts were attractive to me because throughout my academic career I have struggled mightily with time management and procrastination, and I hope to improve in these regards. When beginning work on an assignment, I tend to think about all the work that will go into it, making it seem daunting and difficult to choose a place to begin. This causes me to usually wait until the last possible moment to begin work, and doesn't always leave enough time to complete assignments with as much care I would like. While I have tried a few methods to improve my approach to this problem, I have not stuck with any of them long enough to achieve meaningful results. In Phase 0, I plan to make a sustained effort to develop a time management system that works for me. I plan to incorporate "Time Boxing", or the concept of blocking out a length of time in which to complete part of an assignment. I plan to start my assignments early to make them seem less daunting, and to use the 'Fogg Method' to reinforce good habits. Most of all, I hope to keep in mind that I have the ability to improve my time management so that I don't get discouraged.
## 1.2 The Command Line Reflection

A shell is software that allows a user to interact with an operating system. It allows the user to type commands and then run them. "Bash" stands for 'Bourne Again Shell' - named after Stephen Bourne who wrote the original Unix shell. A shell in OSX works in much the same way that the Finder application does, but allows the user to do more complicated work more efficiently.
The most challenging thing for me was learning the syntax of some of the commands. For example, I had to look online and try and fail a few times before properly using the syntax on the 'grep' command, which I found works like: grep 'word' filename. In the end I was able to successfully use all of the commands after looking them up online.
In my opinion, the most important commands and arguments to know are 'env' and 'echo'. Although I don't think I fully understand them yet, I think environment variables will be of great importance later on in the course.
-pwd print working directory
-ls list directories
-mv move directories
-cd change directories
-../ < I am not sure of this**
-touch create empty file
-mkdir make a directory
-less page through a file
-rmdir remove directory
-rm remove a file
-help - used with another command, shell returns tips on how to use the other command
## 1.4 Forking and Cloning Reflection
Create:
Log in to GitHub
Click on '+' icon in top right corner of page and scroll to 'Create new repository'
Create a name for repository, choose public/private, add license

Clone/Fork:
Go to repo page - Devbootcamp/reponame
Click 'fork' on right side of page
In new page w repo name: yourusername/reponame, copy HTTPS or SSH address
Open terminal. Navigate to desired folder using 'cd'
Enter "git clone (and paste the address that you copied earlier)
Repo now exists in that folder

The reason that you would fork a repo rather than create a new one is that you would want to edit your copy of the repo and then propose changes to the original repo. Creating a new one would not allow the two repos to communicate with each other.
This was my first introduction to git/GitHub. The instructions in the course were detailed so I did not have much trouble setting it up and using it. I learned all about the purpose of version control and the difference between git/GH.
## 1.5 Tracking Changes
How does tracking and adding changes make developers' lives easier? Tracking and adding changes helps developers keep track of their thought process through the course of a project. It allows them to work on a section of a project separately without the risk of damaging the master branch.
What is a commit? A commit is the save point in git. It acts as a 'checkpoint' in that it preserves the code in its current state, and allows you to refer back to that specific commit.
What are the best practices for commit messages? The best practices for commit messages are: a short description of <50 characters that acts like a subject line, present tense verbs, includes motivation for change
What does the HEAD^ argument mean? It is a command to revert back to the last commit in case you decide you want to change some of the files after the fact.
What are the 3 stages of a git change and how do you move a file from one stage to the other? 1. Pull recent changes to ensure local and remote versions of repository are the same: [git checkout master, git pull origin master]. 2. Merge changes from master into your feature branch [git checkout feature-branch-name, git merge master]. 3. Push feature branch to remote fork [git push origin feature branch name].
Write a handy cheatsheet of the commands you need to commit your changes? See above
What is a pull request and how do you create and merge one? A pull request is when you merge the changes on your branch into the master branch. The workflow is as follows: Create a new branch from the command line > Check out the branch > Write and commit some code > Push the branch to GitHub > Issue a pull request to the master branch.
Why are pull requests preferred when working with teams? Pull requests are preferred when working with teams because when the request is made, it presents a good opportunity for the code that the person is requesting to be added to be reviewed by the rest of the group. The owners of the master branch can test the code and make sure it is correct before adding it to the master branch.

