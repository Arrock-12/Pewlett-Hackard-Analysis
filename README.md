# Pewlett-Hackard-Analysis
## Overview of the analysis
For this project, we used employee data from Pewlett- Hackard to help the HR department prepare for the upcoming “silver tsunami” – a relatively short time frame when many baby boomers are set to retire. To prepare for the mass exodus, Pewlett-Hackard wanted a list of retirement-eligible employees by title and then a count of how many titled positions were potentially retiring; and then a list of slightly younger employees (born in 1965) who could semi-retire and act as mentors to new hires or replacements. We approached this task by:
-	Creating a Retirements by Title table that listed the employees of retirement age by their current title
-	Getting a count of the retirees by title to provide indication about which positions might lose the most workers
-	Revising the list to ensure that only current employees were included
-	Creating a table showing which employees meet the mentorship eligibility criteria by joining the employees data, department employees, and titles data sets. 
	
### Resources
-	PostgreSQL 12.11.1
-	pgAdmin 4
-	CSV Files
    - Employees.csv
    - Departments.csv
    - Titles.csv
    - Dept_emp.csv
    - Salaries.csv
    - Dept_managers.csv

## Results
-	In the table Retirement Titles, we created a list of employees eligible to retire with their titles. However, in the original table there were several employees with more than one title during their time at Pewlett-Hackard so the table needed to be modified.

![Retirement_titles](https://user-images.githubusercontent.com/101822948/171308376-b7e4ceb8-a8c6-42f0-8a47-34c5247f8501.png)

-	In the modified table, Unique Tables, only the eligible retiree’s current title is listed. This was done by using the DISTINCT ON statement, as noted below.  Finally, we altered the table information to include only current employees using the COUNT function.

![Unique_titles](https://user-images.githubusercontent.com/101822948/171308401-261df4a9-41ef-4471-9f6c-37f1462a2f96.png)

-	We then used the count function to get the number of employees with those specific titles that are retiring.

![Using Count on titles](https://user-images.githubusercontent.com/101822948/171308416-79ed2a8e-e10d-4ead-b82e-8066cba4de0a.png)

-	For the Mentorship Eligibility table, we combined three of the data sets provided by Pewlett-Hackard into a new table, used DISTINCT On the employee number and filtered the data to include employees born in 1965.

![Mentorship_eligibility table](https://user-images.githubusercontent.com/101822948/171308475-360cf752-22d0-4962-91b0-45ab66851010.png)

## Summary

Based on the information in the Unique Titles table, there are over 70,000 eligible retirees with the nearly 26,000 of them being Senior Engineers and another 25,000 being Senior Staff. Fortunately, there are only two in management that are retiring. However, it is unlikely that all of these positions will immediately need to be filled. The management positions will likely be the most pressing positions to fill in order to ensure continuity.

Based on results of the Mentorship Eligibility table, there appears to be enough retirement-ready employees that could participate in a mentorship program as they ease into retirement. Part of this process would involve making sure that there were able-bodied employees already able to step into their current roles as they begin to reduce their work volume in order to train the next generation. However, it is likely that there are relatively few roles that would require in-depth training for a future replacement. Most likely in the more advanced positions. 

Our initial query narrowed down the number of employees to the retirement eligible retirees. A sample of that code is below. We needed to make sure that the employees were not just within the correct age to retire (those born between 1952 and 1955) but also that were still employed since the data records include all employment records including for those no longer with Pewlitt-Hackard. 

![Code showing retirement criteria and count](https://user-images.githubusercontent.com/101822948/171308557-1b3d5b73-3761-44e2-95c4-368238c0bdf2.png)

We also created a tailored list showing how many people in the sales department were going to retire. This was done at the request of the Manager of the Sales Department and provided him with an overview of not just the number of potential retirees, but also their names and titles. This will allow the manager to make informed decisions as the silver tsunami approaches regarding potential hires and possibly provide him with a timeframe for hiring or promoting.

![Sales_dept](https://user-images.githubusercontent.com/101822948/171308572-8176a2f9-0759-427c-897a-ed013c995a13.png)

