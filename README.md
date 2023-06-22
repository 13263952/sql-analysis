# Project Explanation

## Data Modeling

In the data modeling phase of the project, I inspected the CSV files and sketched an Entity Relationship Diagram (ERD) using a tool like QuickDBD. The ERD helped me understand the relationships between the different entities in the data.

## Data Engineering

In the data engineering phase, I created a table schema for each of the six CSV files based on the information obtained from the data modeling phase and the relationships identified in the ERD. I followed these steps:

1. **Data Types:** I specified appropriate data types for each column to ensure efficient storage and accurate representation of the data.
2. **Primary Keys:** I assigned primary keys to each table, ensuring that the column(s) have unique values.
3. **Foreign Keys:** If any foreign keys were identified, I included them in the table schema to establish relationships between tables.
4. **Constraints:** I applied constraints such as NOT NULL or UNIQUE to enforce data integrity and validation rules.

Once the table schemas were designed, I imported each CSV file into its corresponding SQL table, ensuring the tables were created in the correct order to handle foreign keys.

## Data Analysis

For the data analysis phase, I executed SQL queries to extract specific information from the imported data. Here are the results of the analysis:

1. List of employee number, last name, first name, sex, and salary:


2. List of first name, last name, and hire date for employees hired in 1986:


3. List of department managers with their department number, department name, employee number, last name, and first name:


4. List of department number for each employee with employee number, last name, first name, and department name:
 
5. List of first name, last name, and sex for employees named Hercules with last name starting with the letter B:


6. List of employees in the Sales department with their employee number, last name, and first name:


7. List of employees in the Sales and Development departments with their employee number, last name, first name, and department name:


8. Frequency counts of employee last names in descending order:
  

Please refer to the actual codefor more detailed information.
 ![Snippet Result 8](/erd.png)


