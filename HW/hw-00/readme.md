HW 0
====

This assignment is due on Monday and must be submitted before 11:59 pm on April 8th. Please submit your writeup
by committing it to the appropriate holder in your private GitHub repository. We will discuss how to do this in class on 
Thursday.

For this assignment, I want to get you acquanted with the software that
we will be using for this class. We'll download the tools that we'll be needing,
read (and watch) a little about them, and then we'll do some light exercises.

In the HW assignment below, if a section has no question to be answered,
just add a sentence affirming that 
you installed the required programs and/or watched the required videos.

# 1. Installation and Setup

In this section, we'll download and install Python (using the Anaconda distribution), Git, and LaTeX.  If you need help installing this software, you can
get help at the Python Crash Course on Saturday or in the TA session on Monday.

 - Python 3.7
   - For this class, please download the [Anaconda distribution of Python](https://www.anaconda.com/download/). Be sure to download Python, version 3.7. When you install
   Anaconda, be sure to install the full distribution. Although MiniConda is nice, in my opinion the full Anaconda distribution is easier to use for beginners. 
 - Git
   - Although there are many different Git clients and Git GUI's that you could use,
   I prefer that you install GitKraken. GitKraken bundles a Git Client with its GUI, so you don't need to install multiple pieces of software. [GitKraken can be downloaded here.](https://www.gitkraken.com/)
   - This class will use GitHub extensively. GitHub is a website that allows you to store, interactic with, and share your Git repositories online. [Please register an account with GitHub](https://github.com/) if you don't already have one.
 - LaTeX
   - LaTeX (pronounced "LAY-tekh") is a high-quality typesetting system that is designed for the production of technical and scientific documentation. LaTeX is the de facto standard for the communication and publication of scientific documents and is widely used within
   economics as well as other academic disciplines. We will be learning how
   to write scientific documents in LaTeX. Please download a LaTeX distribution. I recommend [TeX Live on Windows or Linux](https://www.tug.org/texlive/) and [MacTeX on a Mac](https://www.tug.org/mactex/). 
   - Download a TeX editor. I recommend [TeX Maker](http://www.xm1math.net/texmaker/). You may also be interested in trying out [LyX](https://www.lyx.org/), though note that LyX is not a pure LaTeX system and lacks some of the power and flexibility that
   pure LaTeX allows.
 - A Text Editor
   - Install the Atom text editor. This will come in handy later. You can [download it here](https://atom.io/). Note that Visual Studio Code is very good and comes bundles with the Anaconda distribution we installed above. You can install it using the "Anaconda Navigator" app that is installed when you installed Anaconda above. I personally use [Sublime Text 3](https://www.sublimetext.com/3) the most often, though I use the Atom editor in certain situations which we'll discuss later. If you're interested, you might take some time to explore the differences between these different editors and decide which one you like best. Also note that if you install Sublime Text, you should immediately install and start using [Sublime Text Package Control](https://packagecontrol.io/installation).

# 2. Reading

## 2.1 Git

Git is a version control system (alternatively called "source control" or "revision control" system) that is used in software development. It allows tracking of changes in source code as well as providing support for non-linear, distributed development. It is useful for software development in teams as well as when working alone. Git is currently the most popular version control system in use.

 - Version control is becoming more important in economics as the computational
 projects that economists undertake are becoming larger. Here
 is a ["Practitioner's Guide" for working with code and data in the social scientists.](https://www.brown.edu/Research/Shapiro/pdfs/CodeAndData.pdf)
 It is written by two well-known economists formerly at Booth, Matthew Gentzkow and Jesse Shapiro. Read Chapter 1 (Introduction) and Chapter 3 (Version Control).


The following videos talk about what version control is and describe the benefits of version control.

 - Click the image below. It links to the appropriate YouTube video. 

 [![Introduction to Git](https://img.youtube.com/vi/M-O8ZNW9icQ/0.jpg)](https://www.youtube.com/watch?v=M-O8ZNW9icQ)
 
 - Second introduction to Git.

[![Introduction to Git 2](https://img.youtube.com/vi/K0mgc3efx-A/0.jpg)](https://www.youtube.com/watch?v=K0mgc3efx-A) 

One of the goals of this class is to make sure that you know how to use a version
control system (in our case, Git). Beyond that, we want to make sure
that you learn Git on a sufficiently deep level. For now, it might suffice to [memorize a few basic commands](https://xkcd.com/1597/). However, rest assured that we will cover other more
advanced features of Git later. 

!["Git" on xkcd](https://imgs.xkcd.com/comics/git.png)

## 2.2 GitHub

The first thing to note is that GitHub is not the same thing as Git. GitHub is a hosting service for version control that *uses git*. It provides access control and several collaboration features such as bug tracking, feature requests, task management, and wikis for every project.

Having a GitHub account and developing a portfolio of projects on GitHub is becoming 
an important part of getting a job as a software developer or data scientist. Read
[this Quora question and answer](http://qr.ae/TU1YsO).

## 2.3 Python

To get an idea of some of the things that we'll be learning in this class,
watch Jake VanderPlas’ Keynote address in which gives an introduction to the PyData/SciPy world. (Click the image below.)

[![Jake VanderPlas’ Keynote address in which gives an introduction to the PyData/SciPy world.](https://img.youtube.com/vi/DifMYH3iuFw/0.jpg)](https://www.youtube.com/watch?v=DifMYH3iuFw) 

# 3. Python Basics

In this section, you'll start learning the basics of Python. For those
with no experience with Python, or any coding at all, we will cover
the necessary topics in the Python Crash Course on Saturday.

Complete the [exercises in the linked PDF](./hw0-python-basics.pdf). If you haven't installed Python
on your computer yet, you may get started by using Python online instead. Check
out Google's online Jupyter notebook environment, [Google Colaboratory](https://colab.research.google.com).

Feel free to answer the questions directly in a notebook on Google Colaboratory (which can then be downloaded or exported to a PDF) or in any other technology (MS Word). Later on we will be more formal about how we type up our assignments.