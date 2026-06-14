# 1. Project Overview
Based on the medical data in the original four csv files, whose entities are; doctors, hospitals, patients and prescriptions, respectively, I created a new relational database by importing and processing the data using MySQL.
<br>The process involved organising csv data into separate tables for each entity, defining primary keys and foreign keys to establish relationships between entities, and creating an additional table that integrates information on patients and doctors.
<br>Once this process is completed, I then developed a set of SQL queries out of the new database I had created, to retrieve specific infomation required by the task, such as identifying the doctor who made the most prescription.
<br>Overall, this project demonstrates the use of data import, relational database modelling, and SQL queries to manage and extract meaningful infomration from the given dataset. 


# 2. Main Files
## 2-1. assessment1_database.sql
### 2-1-1. Overview
This .sql file contains SQL command lines to restore the database with four tables for each of the four entities (doctors, hospitals, patients, prescriptions) and one table (patients_to_doctors), which integrates data on patients and doctors table (as instructed in the task), all of which created by loading the original four csv files that I had cloned from the given link to a GitHub repository, and processing the data using my SQL.
### 2-1-2. Database Structure
* doctors stores personal information on doctors and their associated hospital.
* hospitals stores general information on hospitals.
* patients stores personal information on patients and their assigned doctor. 
* prescriptions stores general information on prescription for each patient made by their assigned doctor.
* patients_to_doctors stores personal information on patients and doctors, with each patient assigned to a single doctor.  

## 2-2. queries.sql
### 2-2-1. Overview
This .sql file includes a list of 6 command lines of SQL queries to retrieve certain information specified in the task. 
### 2-2-2. Query Descriptions
* The 1st query lists all doctors based at a particular hospital.
* The 2nd query lists all prescriptions for a particular patient, ordered by the prescription date.
* The 3rd query lists all prescriptions that a particular doctor has prescribed.
* The 4th query adds a new patient to the database, including being registered with one of the doctors.
* The 5th query identifies which doctor has made the most prescriptions.
* The 6th query lists all doctors at the hospital with biggest size (number of beds).

## 2-3. ERD_assessment1.drawio.png
### 2-3-1. Overview
This png file contains a Entity Relationship Diagram of the 4 entities, showing the primary keys and foreign keys of each entity.

## 2-4. pseudocodes.md
This file contains pseudocodes which show how I broke down the task and planned how to organise the database identify relationships, and write SQL queries


# 3. How to use the files
## 3-1. assessment1_database.sql
Execute the following code, which includes the name of this file, on your local machine, and it will restore the whole database on your MySQL;
mysql -u username -p assessment1 < assessment1_database.sql
## 3-2. queries.sql
Execute the SQL queries in the file and it will retrieve the certain information specified in the task.
## 3-3. ERD_assessment1.drawio.png
You can refer to the ERD in this file to understand the structure of the database and the relationships between each table.




