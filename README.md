# Pewlett Hackard Analysis
## 1. Project Overview
### Background
We've been tasked with determining the number of employees retiring per title and identifying employees who are eligible to participate in a mentorship program. To do both we will use SQL to make a database of all of the employees and using the query tool to compound all of the employees into the proper tables.
### Purpose
This code serves as the queries made to the SQL database. Included is the code for the tables that set up the database and the data used to fill the initial tables. The goal of these queries and tables is to create tables with filtered data to determine retirement eligibility and mentorship eligibility.
## 2. Results
### Retiring Titles:
- Senior titles are the prominent titles withing the retirees, which makes sense as with age comes experience and longer careers.
- Leadership roles are also prominent for the same reasons.
- Assistant Engineers are less prominent as it would make sense as one does not usually retire as an assistant.
- Surprising lack of managerial positions retiring, or perhaps it is due to promotions to a higher office not recorded in the .csv files.

Table 7.a:

![image](https://user-images.githubusercontent.com/71575748/153761804-f8c973e0-6f91-4b26-adf6-7415d2f9cc68.png)

### Mentorship Eligibility:
- There is a major decrease in the total number of mentorship eligible persons in comparison to the retiring group.
- The difference in number of mentors in comparison to the number of retirees can be explained by the range of birth dates.
- There are no Mentorship Eligible employees that are under the title: "Manager" as seen in Table 7.c.
- There is a noticeable difference in the ratio of senior to non-senior positions as seen in Table 7.c.

Table 7.b:

![image](https://user-images.githubusercontent.com/71575748/153761785-ddbc1e63-1065-460f-99bb-8bcec3dfd5bc.png)

## 3. Summary
- In a new query (Employee_Challenge_Post_Query.sql), a table was made to get the total count of retiring employees from each title and a count of each employee from the mentoring table sorted into each title.
- The table below (Table 7.c) is produced from the query to illustrate the number of positions opening in the silver tsunami and the number of mentorships eligible employees per each title.
  - 25916 Senior Engineers
  - 24926 Senior Staff
  - 9285 Engineers
  - 7636 Staff
  - 3603 Technical Leaders
  - 1090 Assistant Engineers
  - 2 Managers
- Based on Table 7.c, there are enough mentors in each department for each mentee, but there are not enough mentees to fill the vacancies of each mentor. However, that may be a problem for another time.

Table 7.c:

![image](https://user-images.githubusercontent.com/71575748/153771075-2d4a1d3b-121b-4e05-8a0f-5f86b661fb40.png)




