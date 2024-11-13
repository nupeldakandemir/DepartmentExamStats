# DepartmentExamStats
MATLAB project to generate a dataset of student exam scores and calculate average final scores by department.

At a university, an analysis of the midterm and final exam scores for 10,000 students enrolled in different departments is to be conducted.For this analysis, you are required to first create a dataset  in MATLAB and then perform operations on this dataset. 

**The dataset should contain the following information for each student:**

- Student ID, Department, Midterm Score, and Final Exam Score.
- The midterm and final exam scores should be random values between 0 and 100.
- In the main.m file, create a dataset for 10,000 students.
- This dataset should include randomly generated midterm and final exam scores for each student.
- Student IDs should be sequential from  1 to 10,000.

***The departments should be randomly selected from the following list:***
- Computer, Mechanical, Electrical, Civil and Chemical Engineering

  
Write a function named AverageGrades.m. This function should take two parameters: the dataset you created and the name of the department you want to analyze. The function should calculate and return the average final exam score of the students in the specified department. 

***If there are no students in the specified department, the function should return to NaN.****

- In the main.m file, use the AverageGrades.m function to calculate and display the average final exam score for a specific department (e.g., "Computer Engineering").
  
