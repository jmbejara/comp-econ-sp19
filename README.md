ECON 21410: Computational Methods in Economics
==============================================

# Syllabus Summary

[The full class syllabus can be found here.](https://github.com/jmbejara/comp-econ-sp18/blob/master/Syllabus-Computational-Economics.pdf)

* **Class:** Tuesdays and Thursdays, 3:30 - 4:50 PM in SHFE 103
* **TA Session:** Wednesday 5:30-6:20 PM in SHFE 203
* **Lecturer:** Jeremy Bejarano, jbejarano@uchicago.edu
* **Office Hours:** TBD, in the graduate commons (SHFE 201)
* **Teaching Assistant:** Ari Boyarsky, aboyarsky@uchicago.edu
* **TA Office Hours:** TBD
* **Website:** Canvas will be used for grades. Homework and notes will be posted on the course GitHub repo: https://github.com/jmbejara/comp-econ-sp18

# Notes

There should be about 19 classes and 9 TA sessions (first Monday excluded). This means that we have 28 in-class sessions total before the reading period.

## Exams

 * Midterm Exam: Thursday, April 25. The exam will take place during class, 3:30-4:50 PM
in SHFE 103.
 * Final Exam: Tuesday, June 13th, 4-6pm (See the registrar’s site for more details.)

**Books Used**

We will mostly used notes that I will provide. Sometimes we will cover lectures from the following sources:

* [Lectures in ](https://lectures.quantecon.org/)[Quantitative Economics](https://lectures.quantecon.org/), by Thomas J. Sargent and John Stachurski (QuantEcon)
* [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/), by Jake VanderPlas (PDSH)
* [Python for Data Analysis, 2nd Edition](https://github.com/wesm/pydata-book), by Wes McKinney (PDA)

**Assignments**

* Assignments must be turned in before midnight on the day that they are due. This means that you must submit to GitHub at 11:59pm or earlier on the due date (usually a Monday). Late assignments will not be accepted.
* Solutions to the homework will be posted in a separate GitHub repo, found here: https://github.com/econ-21410/hw-jbejarano1 

# Schedule

The schedule is listed in the ["lectures" directory](https://github.com/jmbejara/comp-econ-sp19/tree/master/lectures). Each day of lecture has its own directory. The agenda for each particular day is described in the readme file within each day's directory. For example, the agenda for the first class can be found [here](https://github.com/jmbejara/comp-econ-sp19/tree/master/lectures/4-2_Introduction) and the agenda for the second day can be found [here](https://github.com/jmbejara/comp-econ-sp19/tree/master/lectures/4-4_QE-An_Introductory_Example). 

## Introduction to Python, Git, and GitHub


* **Class 2: Thursday, March 29**
    * **Do Before Class:**
        * [Download GitKraken](https://www.gitkraken.com/)
        * Watch the following two YouTube videos about Git:
            * [https://www.youtube.com/watch?v=K0mgc3efx-A](https://www.youtube.com/watch?v=K0mgc3efx-A)
            * [https://www.youtube.com/watch?v=M-O8ZNW9ic](https://www.youtube.com/watch?v=M-O8ZNW9icQ)[Q](https://www.youtube.com/watch?v=M-O8ZNW9icQ)
    * ["QuantEcon: “An Introductory Example"](https://lectures.quantecon.org/py/python_by_example.html)
    * Git, GitHub, and GitHub Classroom
        * Go over how we will be using Git and GitHub in this class.
        * Download GitKraken. Do in-class Git assignment
        * Demonstrate GitHub README system. Teach basics of Markdown
* **Python Crash Course: Saturday, March 31.**
    * Work through [QuantEcon: "Python Essentials"](https://lectures.quantecon.org/py/python_essentials.html)
    * Saturday, March 31 from 12-2pm in Saieh 146. 
* **Class 2a: Monday, April 2**
    * [QuantEcon: "Setting up Your Python Environment"](https://lectures.quantecon.org/py/getting_started.html)
    * **Due: Assignment 0**
    * *Distribute Assignment 1*
        * Practice with Numpy, SciPy, and Matplotlib
* **Class 3: Tuesday, April 3**
    * [QuantEcon: "Numpy"](https://lectures.quantecon.org/py/numpy.html)
    * [QuantEcon: "Matplotlib"](https://lectures.quantecon.org/py/matplotlib.html)
* **Class 4: Thursday, April 5**
    * [QuantEcon: "SciPy"](https://lectures.quantecon.org/py/scipy.html)
* **Class 4a: Monday, April 9**
    * [QuantEcon: "Object Oriented Programming I"](https://lectures.quantecon.org/py/oop_intro.html)
    * [QuantEcon: "Object Oriented Programming II"](https://lectures.quantecon.org/py/python_oop.html)
    * **Due: Assignment 1**
    * *Distribute Assignment 2*
        * Pandas Basics

## Data Wrangling with Python

* **Class 5: [Tuesday, April 10](./lectures/4-10_Pandas_Intro)**
    * Introduction to Pandas
* **Class 6: [Thursday, April 12](./lectures/4-12_Pandas_Intro_Continued)**
    * Quandl
    * Introduction to Pandas, continued
    * In-Class Exercise (occupations notebook)
    * [PDSH: "Handling Missing Data"](https://jakevdp.github.io/PythonDataScienceHandbook/03.04-missing-values.html)  (read on your own)
* **Class 6a: [Monday, April 16](./lectures/4-16_TA_Session)**
    * Go over any questions from HW 2
    * [PDSH: "Hierarchical Indexing"](https://jakevdp.github.io/PythonDataScienceHandbook/03.05-hierarchical-indexing.html)
    * **Due Assignment 2**
    * *Distribute Assignment 3*
        * Data Munging with Pandas
* **Class 7: [Tuesday, April 17](./lectures/4-17_Combining_Datasets)**
    * [PDSH: "Combining Datasets: Concat and Append"](https://jakevdp.github.io/PythonDataScienceHandbook/03.06-concat-and-append.html)
    * [PDSH: "Combining Datasets: Merge and Join"](https://jakevdp.github.io/PythonDataScienceHandbook/03.07-merge-and-join.html)
    * [PDA: "Data Loading, Storage, and File Formats"](http://nbviewer.jupyter.org/github/pydata/pydata-book/blob/2nd-edition/ch06.ipynb) 
    * [QuantEcon: Writing Good Code](https://lectures.quantecon.org/py/writing_good_code.html) (Read on your own)
* **Class 8: [Thursday, April 19](./lectures/4-19_Aggregation_and_Grouping)**
    * [PDSH: "Aggregation and Grouping"](https://jakevdp.github.io/PythonDataScienceHandbook/03.08-aggregation-and-grouping.html)
    * [PDSH: "Pivot Tables"](https://jakevdp.github.io/PythonDataScienceHandbook/03.09-pivot-tables.html)
    * [PDSH: "High-Performance Pandas: eval() and query()"](https://jakevdp.github.io/PythonDataScienceHandbook/03.12-performance-eval-and-query.html)
* **Class 8a: [Monday, April 23](./lectures/4-23_TA_Session)**
    * [PDSH: "Vectorized String Operations"](https://jakevdp.github.io/PythonDataScienceHandbook/03.10-working-with-strings.html)
    * **Due Assignment 3**
    * *Distribute Assignment 4*
        * Summarizing and Visualizing Data
* **Class 9: [Tuesday, April 24](./lectures/4-24_Time_Series)**
    * [PDSH: "Working with Time Series"](https://jakevdp.github.io/PythonDataScienceHandbook/03.11-working-with-time-series.html)
    * [PDSH: "Further Resources"](https://jakevdp.github.io/PythonDataScienceHandbook/03.13-further-resources.html) (Read on your own.)
* **Class 10: [Thursday, April 26](./lectures/4-26_Visualization)**
    * Data visualization with Python
* **Class 10a: Monday, April 30**
    * **Midterm**
    * In-Class midterm, starts at 7:30. You will need to bring your laptop with you to complete the midterm. The midterm will be similar to the HW assignments.signments.

## Econometrics with Python (and R)
