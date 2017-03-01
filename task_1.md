# Task 1 (Paper Handout in Lab)

### Learning Outcomes

+-----------------------------------------+-----------------------------------------+
|             _Outcome_                   |               _Assessment_              |
+=========================================+=========================================+
|- O.1.1: You will understand how to      |  - A.1.1: You can run the lab task      |
|         install and run Python          |                                         |
+-----------------------------------------+-----------------------------------------+
|- O.1.2: You will be able to access      |  - A.1.2: You successfully generate the |
|         seismic data using Obspy        |           plots specified in the lab    |
|                                         |           notes                         |
+-----------------------------------------+-----------------------------------------+
|- O.1.3: You can create a seismic        |  - A.1.3: You complete the freeform     |
|         workflow using Obspy            |           task in lab 1                 |
|                                         |                                         |
+-----------------------------------------+-----------------------------------------+
|- O.1.4: You can integrate seismic       |  - A.1.4: You can answer the qualitative|
|         data into a geophysical         |           questions in lab 1            |
|         framework                       |                                         |
+-----------------------------------------+-----------------------------------------+

### Introduction to Python as a Seismologic Tool

The purpose of this task is to familiarize yourself with some of the tools used in modern observational seismology.
This tutorial assumes you are using a unix based system (Mac OS, Linux etc.), and have some knowledge of the command line.
Specifically, we will be learning the idioms of the modern python programming language, in the context of the obspy observational seismology package.

*Cultural Note:* use of these idioms is known as "pythonic", one who understands them well is known as a "pythonista".

The Obspy package allows an efficient, repeatable workflow to be performed for the basic operations of observational seismology; searching for data, downloading, filtering, incorporation of metadata etc.

In order to use these tools, we must first obtain access to them. Most unix-based systems (Mac OS, Linux etc) will have access to a system installation of Python, but to avoid interfering with essential system tasks it is better to install our own.

### Obtaining a Python distribution

The de facto standard for scientific Python distributions is Anaconda, which can be obtained from https://www.continuum.io/downloads.
Install Anaconda using the graphical installer or the command line depending on your preference.
Python 2.7 is a legacy release only, and future development takes place in the Python 3.X line, so it is worth learning Python 3 from the get go.
Anaconda should automatically configure itself so that running python in the command line refers to your new Anaconda distribution.

*Note:* Mac OS users should install Xcode and the command line tools before attempting to install Anaconda.

### Setting up an Obspy environment

The current version of Python used by Anaconda (as of writing) is v3.6 - however, Obspy only supports Python versions up to 3.5. Consequently, we need to set up a 3.5 environment.
Anaconda allows us to easily create and switch between python installations so that we can try out different combinations of packages.

In order to set up a 3.5 environment, we can run in the command line

```
conda create --name python35 python=3.5 anaconda
```

This may take a little while, as anaconda ships with a lot of cool stuff.
In order to switch to this environment we can then write

```
source activate python35
```

and we are now working in Python 3.5!

Once we have set up Python 3.5, we can install Obspy.
This is as simple as first adding a non-standard repository (collection of packages), and then installing obspy from it

```
conda config --add channels conda-forge

conda install obspy
```

### Starting the Laboratory

Now that you have set up your Python distribution to include Obspy, make a copy of the file task_1.ipynb and rename the copy to task_1_<yourname>.ipynb.
You will be submitting the file as your homework for this week. To begin the tutorial, run
```
jupyter notebook task_1_<yourname>.ipynb
```
from the command line.
